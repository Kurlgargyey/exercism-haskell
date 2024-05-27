module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = collatzCounter n 0

collatzCounter :: Integer -> Integer -> Maybe Integer
collatzCounter n counter
 | n < 1 = Nothing
 | n == 1 = Just counter
 | even n = collatzCounter (div n 2) (counter+1)
 | otherwise = collatzCounter (3*n+1) (counter+1)