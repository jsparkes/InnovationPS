module Test.CardSpec where

import Prelude

import Cards (Card(..), CardColor(..), cardColorParse, getInnovationTxt, parseCards)
import Data.Array (length, (!!))
import Data.Maybe (Maybe(..))
import Effect.Class (liftEffect)
import Effect.Class.Console (log)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)


spec :: Spec Unit
spec = do
  describe "CardColor" do
    it "round trip" do
      (show Green # cardColorParse) `shouldEqual` Green
  describe "Cards" do
    it "parses cards from innovation.txt" do
      log "Getting file"
      input <- getInnovationTxt
      cards <- liftEffect $ parseCards input
      length cards `shouldEqual` 105
      case cards !! 0 of
        Nothing -> "x" `shouldEqual` "y"
        Just (Card card) -> 
          card.title `shouldEqual` "Agriculture"
