{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}

module Faker.Military where

import Data.Text
import Faker
import Faker.Internal
import Faker.Provider.Military
import Faker.TH

$(generateFakeField "military" "army_rank")

$(generateFakeField "military" "marines_rank")

$(generateFakeField "military" "navy_rank")

$(generateFakeField "military" "air_force_rank")

$(generateFakeField "military" "dod_paygrade")

-- | @since 1.0
$(generateFakeField "military" "coast_guard_rank")

-- | @since 1.0
$(generateFakeField "military" "space_force_rank")
