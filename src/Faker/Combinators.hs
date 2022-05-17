{-# LANGUAGE ExplicitForAll #-}

module Faker.Combinators where

import Control.Monad
import Data.Foldable
import Data.List (sort, unfoldr)
import Faker
import System.Random

-- | Generates a random element in the given inclusive range.
--
-- @
-- λ> item \<- 'generate' $ 'fromRange' (1,10)
-- λ> item
-- 2
-- @
fromRange :: forall a m. (Monad m, Random a) => (a, a) -> FakeT m a
fromRange rng =
  FakeT
    ( \r ->
        let (x, _) = randomR rng (getRandomGen r)
         in pure x
    )

-- | Generates a random element over the natural range of `a`.
--
-- @
-- λ> import Data.Word
-- λ> item :: forall a m. Word8 \<- 'generate' 'pickAny'
-- λ> item
-- 57
-- @
pickAny :: forall a m. (Monad m, Random a) => FakeT m a
pickAny =
  FakeT
    ( \settings ->
        let (x, _) = random (getRandomGen settings)
         in pure x
    )

-- | Tries to generate a value that satisfies a predicate.
--
-- @
-- λ> import qualified Faker.Address as AD
-- λ> item :: forall a m. Text \<- 'generate' $ 'suchThatMaybe' AD.country (\x -> (T.length x > 5))
-- λ> item
-- Just Ecuador
-- @
suchThatMaybe :: forall a m. Monad m => FakeT m a -> (a -> Bool) -> FakeT m (Maybe a)
gen `suchThatMaybe` p = do
  x <- gen
  return $
    if p x
      then Just x
      else Nothing

-- | Generates a value that satisfies a predicate.
--
-- @
-- λ> import qualified Faker.Address as AD
-- λ> item :: forall a m. Text \<- 'generate' $ 'suchThat' AD.country (\\x -> (T.length x > 5))
-- λ> item
-- Ecuador
-- @
suchThat :: forall a m. Monad m => FakeT m a -> (a -> Bool) -> FakeT m a
gen `suchThat` p = do
  mx <- gen `suchThatMaybe` p
  case mx of
    Just x -> return x
    Nothing -> gen `suchThat` p

-- | Randomly uses one of the given generators. The input structure
-- must be non-empty.
--
-- @
-- λ> import qualified Faker.Address as FA
-- λ> let fakes = [FA.country, FA.postcode, FA.state]
-- λ> generate (oneof fakes)
-- Montana
-- @
oneof :: forall t a m. (Monad m, Foldable t) => t (FakeT m a) -> FakeT m a
oneof xs = helper
  where
    items = toList xs
    helper =
      case items of
        [] -> error "Faker.Combinators.oneof should be non-empty"
        xs' -> fromRange (0, length xs' - 1) >>= (items !!)

-- | Generates one of the given values. The input list must be non-empty.
--
-- @
-- λ> let fakeInt = elements [1..100]
-- λ> generate fakeInt
-- 22
-- @
elements :: forall t a m. (Monad m, Foldable t) => t a -> FakeT m a
elements xs =
  case items of
    [] -> error "Faker.Combinators.element used with empty list"
    ys -> (ys !!) `fmap` fromRange (0, length xs - 1)
  where
    items = toList xs

-- | Generates a list of the given length.
listOf :: forall a m. Monad m => Int -> FakeT m a -> FakeT m [a]
listOf = replicateM

-- | A pure version of `listOf`. The resulting list will be deterministic, while containing varied elements (unlike `listOf`).
variedListOf :: Int -> Fake a -> Fake [a]
variedListOf n fakedata = FakeT $ \settings -> traverse generate $ take n $ unfoldr coalgebra settings
  where
    -- implemented as an anamorphism: `( settings -> (fakedata, newSettings) ) -> [fakedata]`
    coalgebra fakerSettings =
      Just
        ( FakeT $ \settings -> runFakeT fakedata $ setRandomGen a fakerSettings,
          setRandomGen b fakerSettings
        )
      where
        (b, a) = split $ getRandomGen fakerSettings

-- | Generates an ordered list.
orderedList :: forall a m. (Monad m, Ord a) => Int -> FakeT m a -> FakeT m [a]
orderedList n gen = sort <$> listOf n gen

-- | Chooses one of the given generators, with a weighted random distribution.
-- The input list must be non-empty.
frequency :: forall a m. Monad m => [(Int, FakeT m a)] -> FakeT m a
frequency [] = error "Faker.Combinators.frequency used with empty list"
frequency xs0 = fromRange (1, tot) >>= (`pick` xs0)
  where
    tot = sum (map fst xs0)
    pick n ((k, x) : xs)
      | n <= k = x
      | otherwise = pick (n - k) xs
    pick _ _ = error "FakeT m.pick used with empty list"

-- | Generate a value of an enumeration in the range [from, to].
--
-- @since 0.2.0
--
-- @
-- λ> data Animal = Cat | Dog | Zebra | Elephant | Giarfee deriving (Eq,Ord,Enum, Show)
-- λ> generate (fakeEnumFromTo Cat Zebra)
-- Zebra
-- @
fakeEnumFromTo :: forall a m. (Monad m, Enum a) => a -> a -> FakeT m a
fakeEnumFromTo from to = toEnum <$> fromRange (fromEnum from, fromEnum to)

-- | A sumtype can just use this function directly. Defined as
-- fakeBoundedEnum = `fakeEnumFromTo` `minBound` `maxBound`
--
-- @since 0.7.1
fakeBoundedEnum :: forall a m. (Monad m, Enum a, Bounded a) => FakeT m a
fakeBoundedEnum = fakeEnumFromTo minBound maxBound
