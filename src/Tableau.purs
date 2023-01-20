module Tableau
  ( Tableau(..)
  , addToTableau
  , canSplay
  , getHighestTopCard
  , removeFromTableau
  , splay
  , tuckToTableau
  )
  where

import Prelude

import Cards (Card(..), CardColor, Deck(..), getHighestCard, remove, stack, tuck)
import Data.Argonaut (class DecodeJson, class EncodeJson)
import Data.Argonaut.Decode.Generic (genericDecodeJson)
import Data.Argonaut.Encode.Generic (genericEncodeJson)
import Data.Array as Array
import Data.Foldable as Foldable
import Data.Generic.Rep (class Generic)
import Data.List as List
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.Show.Generic (genericShow)
import Splay (SplayDirection)

newtype Tableau = Tableau
  { stacks :: Map CardColor Deck
  , splayed :: Map CardColor SplayDirection
  }

derive instance genericTableau :: Generic Tableau _

instance showTableau :: Show Tableau where
  show = genericShow

instance encodeTableau :: EncodeJson Tableau where
  encodeJson = genericEncodeJson

instance decodeTableau :: DecodeJson Tableau where
  decodeJson = genericDecodeJson

addToStack :: Map CardColor Deck -> CardColor -> Deck -> Map CardColor Deck
addToStack map color deck = Map.insert color deck map

addToTableau :: Tableau -> Card -> Tableau
addToTableau (Tableau t) card@(Card c) = case Map.lookup c.color t.stacks of
  Nothing ->
    Tableau $ t { stacks = Map.insert c.color (Deck (Array.singleton card)) t.stacks }
  Just s -> do
    let
      deck = stack s card
      stacks = addToStack t.stacks c.color deck
    Tableau $ t { stacks = stacks }

tuckToTableau :: Tableau -> Card -> Tableau
tuckToTableau (Tableau t) card@(Card c) = case Map.lookup c.color t.stacks of
  Nothing ->
    Tableau $ t { stacks = Map.insert c.color (Deck (Array.singleton card)) t.stacks }
  Just s -> do
    let
      deck = tuck s card
      stacks = addToStack t.stacks c.color deck
    Tableau $ t { stacks = stacks }

removeFromTableau :: Tableau -> Card -> Tableau
removeFromTableau (Tableau t) card@(Card c) = case Map.lookup c.color t.stacks of
  Nothing -> Tableau t -- this should never occur!
  Just s -> do
    let
      deck = remove s card
      stacks = addToStack t.stacks c.color deck
    Tableau $ t { stacks = stacks }

splay :: Tableau -> CardColor -> SplayDirection -> Tableau
splay (Tableau t) color dir =
  Tableau $ t { splayed = Map.insert color dir t.splayed }

canSplay :: Tableau -> CardColor -> Boolean
canSplay (Tableau t) cc = case Map.lookup cc t.stacks of
  Nothing -> false
  Just (Deck d) -> Array.length d > 1

getHighestTopCard :: Tableau -> Maybe Card
getHighestTopCard (Tableau t) = do
  let
    highs = List.mapMaybe (\deck -> getHighestCard deck) $ Map.values t.stacks
  Foldable.maximum highs

