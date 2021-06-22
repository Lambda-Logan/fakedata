{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}

module Faker.Quote where

import Data.Text
import Faker
import Faker.Internal
import Faker.Provider.Quote
import Faker.TH

$(generateFakeField "quote" "famous_last_words")

$(generateFakeField "quote" "matz")

$(generateFakeField "quote" "most_interesting_man_in_the_world")

$(generateFakeField "quote" "robin")

$(generateFakeField "quote" "singular_siegler")

$(generateFakeField "quote" "yoda")

-- | @since 1.0
$(generateFakeField "quote" "fortune_cookie")
