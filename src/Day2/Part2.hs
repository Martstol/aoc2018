module Day2.Part2 (solve) where

import Data.List

solve = showMaybe . fmap (uncurry intersect) . find (uncurry (differBy 1)) . pairs . lines

pairs :: [a] -> [(a, a)]
pairs input = [(x, y) | (x:xs) <- tails input, y <- xs]

differBy :: (Eq a) => Int -> [a] -> [a] -> Bool
differBy n [] ys = n == length ys
differBy n xs [] = n == length xs
differBy n (x:xs) (y:ys) = if x == y then differBy n xs ys else differBy (n-1) xs ys

showMaybe :: Maybe String -> String
showMaybe Nothing = ""
showMaybe (Just a) = a