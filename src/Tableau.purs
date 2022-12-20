module Tableau
  ( Tableau(..)
  , addToTableau
  , splay
  , tuckToTableau
  ) where

import Prelude
import Cards (Card(..), CardColor, Deck(..), tuck, stack)
import Data.Argonaut (class DecodeJson, class EncodeJson)
import Data.Argonaut.Decode.Generic (genericDecodeJson)
import Data.Argonaut.Encode.Generic (genericEncodeJson)
import Data.Array as Array
import Data.Generic.Rep (class Generic)
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
  Just s ->
    let
      deck = stack s card

      stacks = addToStack t.stacks c.color deck
    in
      Tableau $ t { stacks = stacks }

tuckToTableau :: Tableau -> Card -> Tableau
tuckToTableau (Tableau t) card@(Card c) = case Map.lookup c.color t.stacks of
  Nothing ->
    Tableau $ t { stacks = Map.insert c.color (Deck (Array.singleton card)) t.stacks }
  Just s ->
    let
      deck = tuck s card

      stacks = addToStack t.stacks c.color deck
    in
      Tableau $ t { stacks = stacks }

splay :: Tableau -> CardColor -> SplayDirection -> Tableau
splay (Tableau t) color dir =
  Tableau $ t { splayed = Map.insert color dir t.splayed }
