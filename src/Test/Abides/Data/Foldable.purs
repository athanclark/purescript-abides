module Test.Abides.Data.Foldable where

import Data.Foldable (fold)


-- | fold (map f x) == foldMap f x
foldMap' :: forall f a b. Foldable f => Functor f => Monoid b => Eq b => (a -> b) -> f a -> Boolean
foldMap' f x = fold (fmap f x) == foldMap f x
