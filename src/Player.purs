module Player where

import Prelude
import Cards (Deck)
import Tableau (Tableau)

newtype Player
  = Player
  { name :: String
  , id :: Int
  , tableau :: Tableau
  , achievements :: Array Achievement
  , hand :: Deck
  , tuckCount :: Int
  }

derive instance genericPlayer :: Generic Player _

instance showPlayer :: Show Player where
  show = genericShow

instance encodePlayer :: EncodeJson Player where
  encodeJson = genericEncodeJson

instance decodePlayer :: DecodeJson Player where
  decodeJson = genericDecodeJson

instance ordPlayer :: Ord Player where
  compare (Player p1) (Player p2) = compare p1.id p2.id

instance Eq Player where
  eq (Player p1) (Player p2) = p1.id == p2.id



