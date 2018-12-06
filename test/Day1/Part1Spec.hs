module Day1.Part1Spec where

import Test.Hspec
import Test.QuickCheck

import Day1.Part1

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Advent of Code 2018 day 1 part 1" $ do
    it "Test example 1" $ do
      True `shouldBe` True
