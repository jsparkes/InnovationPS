module Player where

import Prelude

import Cards (Card(..), Deck)
import Data.Argonaut (class DecodeJson, class EncodeJson)
import Data.Argonaut.Decode.Generic (genericDecodeJson)
import Data.Argonaut.Encode.Generic (genericEncodeJson)
import Data.Array as Array
import Data.Generic.Rep (class Generic)
import Data.Map (Map(..))
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.Profunctor.Strong (first)
import Data.Semigroup.First (First(..))
import Data.Show.Generic (genericShow)
import Tableau (Tableau)

newtype Player = Player
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

newtype Achievement =
  Achievement
    { index :: Int
    , title :: String
    , by :: Maybe Player
    -- Card used as a marker, it is removed from play.
    , card :: Maybe Card
    }

derive instance genericAchievement :: Generic Achievement _

instance showAchievement :: Show Achievement where
  show = genericShow

instance encodeAchievement :: EncodeJson Achievement where
  encodeJson = genericEncodeJson

instance decodeAchievement :: DecodeJson Achievement where
  decodeJson = genericDecodeJson

derive instance Eq Achievement
derive instance Ord Achievement

regularAchievements :: Array Achievement
regularAchievements =
  Array.fromFoldable
    [ Achievement
        { index: 1
        , title: "Prehistory (1)"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 2
        , title: "Classical (2)"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 3
        , title: "Medieval (3)"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 4
        , title: "Renaissance (4)"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 5
        , title: "Exploration (5)"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 6
        , title: "Enlightenment (6)"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 7
        , title: "Romance (7)"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 8
        , title: "Modern (8)"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 9
        , title: "Postmodern (9)"
        , by: Nothing
        , card: Nothing
        }
    ]

specialAchievements :: Array Achievement
specialAchievements =
  Array.fromFoldable
    [ Achievement
        { index: 11
        , title: "Monument"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 12
        , title: "Empire"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 13
        , title: "World"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 14
        , title: "Universe"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 15
        , title: "Wonder"
        , by: Nothing
        , card: Nothing
        }
    ]

allAchievements :: Map Int (First Achievement)
allAchievements =
  ( Map.union
      ( Array.foldMap
          (\a@(Achievement ac) -> Map.singleton ac.index (First a))
          regularAchievements
      )
      ( Array.foldMap
          (\a@(Achievement ac) -> Map.singleton ac.index (First a))
          specialAchievements
      )
  )

-- Set an achievement slot from a card
setAchievement :: Map Int Achievement -> Card -> Map Int Achievement
setAchievement map (Card c) =
  case Map.lookup c.age map of
    Nothing -> map
    Just a -> Map.insert c.age a map
