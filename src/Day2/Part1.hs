module Day2.Part1 (solve) where

import Data.List

solve :: String -> String
solve input = 
  let boxIds = lines input
  in show ((scanBoxes 2 boxIds) * (scanBoxes 3 boxIds))

scanBoxes :: Int -> [String] -> Int
scanBoxes n = length . filter (elem n) . map (map length . group . sort)
