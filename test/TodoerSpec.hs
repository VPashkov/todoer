module TodoerSpec(spec) where

import Test.Hspec
import Todoer

spec :: Spec
spec = do

  describe "create" $ do
    it "creates empty todo list" $ do
      create `shouldSatisfy` null

  describe "add" $ do
    it "adds new item to the list" $ do
      add [] "New item" `shouldBe` ["New item"]

  describe "complete" $ do
    it "removes item from the list" $ do
      complete ["Item1", "Item2"] "Item1" `shouldBe` ["Item2"]
