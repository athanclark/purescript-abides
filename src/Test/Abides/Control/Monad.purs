module Test.Abides.Control.Monad where

import Prelude (class Eq, (==), (>>=), class Monad, pure)
-- FIXME
-- import Control.Monad (MonadPlus (mzero, mplus))


leftIdentity :: forall m a b. Monad m => Eq (m b) => (a -> m b) -> a -> Boolean
leftIdentity f x = (pure x >>= f) == f x


rightIdentity :: forall m a. Monad m => Eq (m a) => m a -> Boolean
rightIdentity x = (x >>= pure) == x


associative :: forall m a b c. Monad m => Eq (m c) => (a -> m b) -> (b -> m c) -> m a -> Boolean
associative f g x = ((x >>= f) >>= g) == (x >>= (\k -> f k >>= g))


-- annihilation :: forall m a b. MonadPlus m => Eq (m b) => (a -> m b) -> Boolean
-- annihilation f = (mzero >>= f) == mzero


-- distributive :: forall m a b. MonadPlus m => Eq (m b) => (a -> m b) -> m a -> m a -> Boolean
-- distributive f x y = (mplus x y >>= f) == mplus (x >>= f) (y >>= f)
