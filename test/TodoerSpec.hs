module TodoerSpec(spec) where

import Test.Hspec
import Todoer

spec :: Spec
spec = do
  describe "create" $ do
    it "creates empty todo list" $ do
      create `shouldBe` ([] :: [Int])
