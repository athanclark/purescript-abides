module Test.Abides.Control.Category where

import Control.Category (class Category , (<<<), id)


identity :: forall c a b. Category c => Eq (c a b) => c a b -> Boolean
identity p = ((id <<< p) == p) && ((p <<< id) == p)


associative :: forall q a b c d. Category q => Eq (q a d) => q c d -> q b c -> q a b -> Boolean
associative x y z = (x <<< (y <<< z)) == ((x <<< y) <<< z)
