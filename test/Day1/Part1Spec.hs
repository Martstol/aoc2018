module Day1.Part1Spec where

import Test.Hspec
import Test.QuickCheck

import Day1.Part1

main :: IO ()
main = hspec spec

example1 = unlines ["+1", "-2", "+3", "+1"]
example2 = unlines ["+1", "+1", "+1"]
example3 = unlines ["+1", "+1", "-2"]
example4 = unlines ["-1", "-2", "-3"]

spec :: Spec
spec = do
  describe "Advent of Code 2018 day 1 part 1" $ do
    it "Test example 1" $ do
      solve example1 `shouldBe` "3"
    it "Test example 2" $ do
      solve example2 `shouldBe` "3"
    it "Test example 3" $ do
      solve example3 `shouldBe` "0"
    it "Test example 4" $ do
      solve example4 `shouldBe` "-6"
    input <- runIO $ readFile "res/day1.txt"
    it "Test input" $ do
      solve input `shouldBe` "445"
