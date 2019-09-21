module Test.Abides.Data.Functor where


-- | fmap id x == x?
identity :: forall f a. Functor f => Eq (f a) => f a -> Boolean
identity x = fmap id x == x

-- | fmap (f . g) x == fmap f (fmap g x)?
composition :: forall f a. Functor f => Eq (f a) => (a -> a) -> (a -> a) -> f a -> Boolean
composition f g x = fmap (f . g) x == fmap f (fmap g x)
