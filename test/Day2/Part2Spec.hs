module Day2.Part2Spec where

import Day2.Part2
import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec spec

example1 = unlines ["abcde", "fghij", "klmno", "pqrst", "fguij", "axcye", "wvxyz"]

spec :: Spec
spec = do
  describe "Advent of Code 2018 day 2 part 1" $ do
    it "Test example 1" $ do
      solve example1 `shouldBe` "fgij"
    input <- runIO $ readFile "res/day2.txt"
    it "Test input" $ do
      solve input `shouldBe` "wugbihckpoymcpaxefotvdzns"
