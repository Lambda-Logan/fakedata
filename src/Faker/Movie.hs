{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}

module Faker.Movie where

import Data.Text
import Faker
import Faker.Internal
import Faker.Provider.Movie
import Faker.TH

$(generateFakeField "movie" "quote")

$(generateFakeField "movie" "title")
