module Test.CardSpec where

import Prelude

import Cards (Card(..), getInnovationTxt, parseCards)
import Data.Array (length, (!!))
import Data.Maybe (Maybe(..))
import Effect.Class (liftEffect)
import Effect.Class.Console (log)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)


cardSpec :: Spec Unit
cardSpec = do
  describe "single" do
    it "does nothing" do
      liftEffect $ log "In card spec test"
      pure unit
  describe "Cards" do
    it "parses cards from innovation.txt" do
      log "Getting file"
      input <- getInnovationTxt
      cards <- liftEffect $ parseCards input
  -- case c of 
  --   Nothing -> unit
  --   Just cards ->
      log $ show $ length cards
      log $ show  cards
      length cards `shouldEqual` 105
      case cards !! 0 of
        Nothing -> "x" `shouldEqual` "y"
        Just (Card card) -> 
          log card.title
          -- card.title `shouldEqual` "Agriculture"
