module Day1.Part1 (solve) where

solve :: String -> String
solve = show . sum . map read . lines . filter (/='+')
