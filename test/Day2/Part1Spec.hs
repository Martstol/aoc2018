module Day2.Part1Spec where

import Day2.Part1
import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec spec

example1 = unlines ["abcdef", "bababc", "abbcde", "abcccd", "aabcdd", "abcdee", "ababab"]

spec :: Spec
spec = do
  describe "Advent of Code 2018 day 2 part 1" $ do
    it "Test example 1" $ do
      solve example1 `shouldBe` "12"
    input <- runIO $ readFile "res/day2.txt"
    it "Test input" $ do
      solve input `shouldBe` "7904"
