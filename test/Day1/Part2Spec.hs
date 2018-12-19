module Day1.Part2Spec where

import Day1.Part2
import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec spec

example1 = unlines ["+1", "-1"]
example2 = unlines ["+3", "+3", "+4", "-2", "-4"]
example3 = unlines ["-6", "+3", "+8", "+5", "-6"]
example4 = unlines ["+7", "+7", "-2", "-7", "-4"]

spec :: Spec
spec = do
  describe "Advent of Code 2018 day 1 part 2" $ do
    it "Test example 1" $ do
      solve example1 `shouldBe` "0"
    it "Test example 2" $ do
      solve example2 `shouldBe` "10"
    it "Test example 3" $ do
      solve example3 `shouldBe` "5"
    it "Test example 4" $ do
      solve example4 `shouldBe` "14"
    input <- runIO $ readFile "res/day1.txt"
    it "Test input" $ do
      solve input `shouldBe` "219"
