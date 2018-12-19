module Day1.Part2 (solve) where

import qualified Data.HashSet as Set
import           Data.List
import           Data.Maybe
import           Text.Read

solve :: String -> String
solve = show . head . duplicates . scanl (+) 0 . cycle . (mapMaybe readMaybe :: [String] -> [Int]) . lines . filter (/='+')

duplicates xs = duplicates' Set.empty xs
    where
      duplicates' set [] = []
      duplicates' set (x:xs)
        | x `Set.member` set = x:duplicates' set (filter (/=x) xs)
        | otherwise = duplicates' (Set.insert x set) xs
