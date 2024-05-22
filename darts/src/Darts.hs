module Darts (score) where

score :: Float -> Float -> Int
score x y
 | distance x y <= 1 = 10
 | distance x y <= 5 = 5
 | distance x y <= 10 = 1
 | otherwise = 0

distance :: Float -> Float -> Float
distance x y = sqrt (x ** 2 + y ** 2)