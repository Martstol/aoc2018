module Main where

import System.Environment
import qualified Day1.Part1

main :: IO ()
main = do
  [day, part, file] <- getArgs
  input <- readFile file
  case (day, part) of
    ("1", "1") -> putStrLn (Day1.Part1.solve input)
    _ -> putStrLn ("Day " ++ day ++ ", part " ++ part ++ " is unsolved")
