module Test.Abides.Data.Ord where


-- | x <= x?
reflexive :: forall a. Ord a => a -> Boolean
reflexive x = x <= x


-- | x <= y && y <= x => x == y
antisymmetry :: forall a. Ord a => a -> a -> Boolean
antisymmetry x y = if x <= y && y <= x then x == y else True


-- | x <= y && y <= z => x <= z
transitive :: forall a. Ord a => a -> a -> a -> Boolean
transitive x y z = if x <= y && y <= z then x <= z else True
