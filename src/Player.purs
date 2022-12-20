module Player where

import Prelude

import Cards (Card(..), Deck)
import Data.Argonaut (class DecodeJson, class EncodeJson)
import Data.Argonaut.Decode.Generic (genericDecodeJson)
import Data.Argonaut.Encode.Generic (genericEncodeJson)
import Data.Array as Array
import Data.Generic.Rep (class Generic)
import Data.List (List(..), (:))
import Data.List as List
import Data.Map (Map(..))
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe, isJust)
import Data.Profunctor.Strong (first)
import Data.Semigroup.First (First(..))
import Data.Show.Generic (genericShow)
import Tableau (Tableau)

newtype Player = Player
  { name :: String
  , id :: Int
  , tableau :: Tableau
  , achievements :: List Achievement
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
    , age :: Maybe Int
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
        , age: Just 1
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 2
        , title: "Classical (2)"
        , age: Just 2
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 3
        , title: "Medieval (3)"
        , age: Just 3
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 4
        , title: "Renaissance (4)"
        , age: Just 4
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 5
        , age: Just 5
        , title: "Exploration (5)"
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 6
        , title: "Enlightenment (6)"
        , age: Just 6
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 7
        , title: "Romance (7)"
        , age: Just 7
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 8
        , title: "Modern (8)"
        , age: Just 8
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 9
        , title: "Postmodern (9)"
        , age: Just 9
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
        , age: Nothing
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 12
        , title: "Empire"
        , age: Nothing
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 13
        , title: "World"
        , age: Nothing
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 14
        , title: "Universe"
        , age: Nothing
        , by: Nothing
        , card: Nothing
        }
    , Achievement
        { index: 15
        , title: "Wonder"
        , age: Nothing
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

getAchievementByAge :: Int -> Maybe Achievement
getAchievementByAge age =
  Array.find (\(Achievement a) -> a.age == Just age) regularAchievements

getAchievementByTitle :: String -> Maybe Achievement
getAchievementByTitle title =
  Array.find (\(Achievement a) -> a.title == title) specialAchievements

setAchievement :: Player -> Achievement -> Player
setAchievement p@(Player player) a@(Achievement ach) =
  let
    reg = hasAchievementByAge p (fromMaybe 0 ach.age)
    spec = hasAchievementByTitle p ach.title
  in
    if reg == false && spec == false then
      Player $ player { achievements = a : player.achievements }
    else
      p

hasAchievementByAge :: Player -> Int -> Boolean
hasAchievementByAge (Player p) age =
  p.achievements # List.find (\(Achievement a) -> a.age == Just age) # isJust

hasAchievementByTitle :: Player -> String -> Boolean
hasAchievementByTitle (Player p) title =
  p.achievements # List.find (\(Achievement a) -> a.title == title) # isJust

hasAchievement :: Player -> Int -> Boolean
hasAchievement (Player p) index =
  p.achievements # List.find (\(Achievement a) -> a.index == index) # isJust