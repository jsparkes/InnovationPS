module Splay where

import Prelude

import Data.Argonaut (class DecodeJson, class EncodeJson)
import Data.Argonaut.Decode.Generic (genericDecodeJson)
import Data.Argonaut.Encode.Generic (genericEncodeJson)
import Data.Generic.Rep (class Generic)
import Data.Show.Generic (genericShow)

data SplayDirection
  = Unsplayed
  | Left
  | Right
  | Up

splayScore :: SplayDirection -> Int
splayScore dir =
  case dir of
    Unsplayed -> 0
    Left -> 10
    Right -> 25
    Up -> 40

derive instance eqSplayDirection :: Eq SplayDirection

derive instance ordSplayDirection :: Ord SplayDirection

derive instance genericSplayDirection :: Generic SplayDirection _

instance Show SplayDirection where
  show = genericShow

instance EncodeJson SplayDirection where
  encodeJson = genericEncodeJson

instance DecodeJson SplayDirection where
  decodeJson = genericDecodeJson
