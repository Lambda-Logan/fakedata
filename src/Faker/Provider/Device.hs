{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Faker.Provider.Device where

import Config
import Control.Monad.IO.Class
import Data.Map.Strict (Map)
import Data.Monoid ((<>))
import Data.Text (Text)
import Data.Vector (Vector)
import Data.Yaml
import Faker
import Faker.Internal
import Faker.Provider.TH
import Language.Haskell.TH
import qualified Data.Aeson.Key as K

parseDevice :: FromJSON a => FakerSettings -> Value -> Parser a
parseDevice settings (Object obj) = do
  en <- obj .: (getLocaleKey settings)
  faker <- en .: "faker"
  device <- faker .: "device"
  pure device
parseDevice settings val = fail $ "expected Object, but got " <> (show val)

parseDeviceField ::
     (FromJSON a, Monoid a) => FakerSettings -> K.Key -> Value -> Parser a
parseDeviceField settings txt val = do
  device <- parseDevice settings val
  field <- device .:? txt .!= mempty
  pure field

$(genParser "device" "model_name")

$(genProvider "device" "model_name")

$(genParser "device" "platform")

$(genProvider "device" "platform")

$(genParser "device" "manufacturer")

$(genProvider "device" "manufacturer")

$(genParser "device" "serial")

$(genProvider "device" "serial")
