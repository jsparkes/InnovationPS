module Test.CardSpec where

import Prelude

import Test.Spec (Spec, describe, it)

cardSpec :: Spec Unit
cardSpec = do
  describe "Cards" do
    it "succeeds" $ pure unit
