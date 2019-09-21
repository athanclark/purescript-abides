module Test.Abides.Data.BooleaneanAlgebra where


excludedMiddle :: forall a. BooleaneanAlgebra a => Eq a => a -> Boolean
excludedMiddle x = (x || not x) == tt
