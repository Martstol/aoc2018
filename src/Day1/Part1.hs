module Day1.Part1 where

import Data.Maybe
import Text.Read

solve :: String -> String
solve = show . sum . mapMaybe readMaybe . lines . filter (/='+')