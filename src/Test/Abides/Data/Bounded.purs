module Test.Abides.Data.Bounded where

-- | minBound <= x <= maxBound?
bounded :: forall a. Bounded a => Ord a => a -> Boolean
bounded x = minBound <= x && x <= maxBound
