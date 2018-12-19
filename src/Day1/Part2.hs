module Day1.Part2 (solve) where

import qualified Data.HashSet as Set
import           Data.List

solve :: String -> String
solve = show . head . duplicates . scanl (+) 0 . cycle . map read . lines . filter (/='+')

duplicates :: [Int] -> [Int]
duplicates xs = duplicates' Set.empty xs
    where
      duplicates' set [] = []
      duplicates' set (x:xs)
        | x `Set.member` set = x:duplicates' set (filter (/=x) xs)
        | otherwise = duplicates' (Set.insert x set) xs
