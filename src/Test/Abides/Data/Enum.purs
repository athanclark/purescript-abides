module Test.Abides.Data.Enum where


-- | compare x y == compare (fromEnum x) (fromEnum y)
compareHom :: forall a. Enum a => Ord a => a -> a -> Boolean
compareHom x y = compare x y == compare (fromEnum x) (fromEnum y)


-- | pred (succ x) == x
predsucc :: forall a. Enum a => Eq a => a -> Boolean
predsucc x = pred (succ x) == x


-- | succ (pred x) == x
succpred :: forall a. Enum a => Eq a => a -> Boolean
succpred x = succ (pred x) == x
