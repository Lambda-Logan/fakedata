{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}

module BossaNovaSpec where

import qualified Data.Map as M
import Data.Text hiding (all, map)
import qualified Data.Text as T
import qualified Data.Vector as V
import Faker
import Faker.BossaNova
import TestImport
import Test.Hspec

spec :: Spec
spec = do
  describe "BossaNova" $ do
    it "generates BossaNova artist (sanity TH check)" $ do
      aname <- generate artists
      aname `shouldBeOneOf` ["Johnny Alf", "Novos Baianos"]
