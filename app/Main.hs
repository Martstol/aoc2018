module Main where

import System.Environment
import qualified Day1.Part1
import qualified Day1.Part2
import qualified Day2.Part1

main :: IO ()
main = do
  [day, part, file] <- getArgs
  input <- readFile file
  putStrLn $ case (day, part) of
    ("1", "1") -> Day1.Part1.solve input
    ("1", "2") -> Day1.Part2.solve input
    ("2", "1") -> Day2.Part1.solve input
    _ -> "Day " ++ day ++ ", part " ++ part ++ " is unsolved"
