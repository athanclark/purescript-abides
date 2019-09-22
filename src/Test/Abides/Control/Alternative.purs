module Test.Abides.Control.Alternative where

import Prelude (class Applicative, (<*>), class Eq, (==))
import Control.Alternative (class Alternative, (<|>), empty)


-- | (f <|> g) <*> x == (f <*> x) <|> (g <|> x)
distributive :: forall f a b. Alternative f => Applicative f => Eq (f b) => f (a -> b) -> f (a -> b) -> f a -> Boolean
distributive f g x = ((f <|> g) <*> x) == ((f <*> x) <|> (g <*> x))


-- | empty <*> x == empty
annihilation :: forall f a b. Alternative f => Applicative f => Eq (f b) => f (a -> b) -> Boolean
annihilation f = (f <*> empty) == empty
