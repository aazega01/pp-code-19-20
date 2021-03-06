
module Tree where

data Tree a = Nil | Node a (Tree a) (Tree a)
     deriving (Show)

depth :: Tree a -> Int
depth Nil = 0
depth (Node a left right) = 
      1 + max (depth left) (depth right)
