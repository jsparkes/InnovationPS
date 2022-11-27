module Cards where

import Prelude

import Data.Foldable (find)
import Data.Map (Map, values)
import Data.Maybe (Maybe(..))
import Data.String (toLower)
import Effect (Effect)
-- import Effect.Exception (error)

data IconPosition
  = IconTop
  | IconLeft
  | IconMiddle
  | IconRight

allIconPositions :: Array IconPosition
allIconPositions =
  [ IconTop
  , IconLeft
  , IconMiddle
  , IconRight
  ]

data CardColor
  = Green
  | Red
  | Blue
  | Yellow
  | Purple
  | Unknown

-- fixed set of inputws from innovation.txt, so no parse errors are possible
cardColorParse :: String -> CardColor
cardColorParse "Green" = Green

cardColorParse "Red" = Red

cardColorParse "Blue" = Blue

cardColorParse "Yellow" = Yellow

cardColorParse "Purple" = Purple

cardColorParse _ = Unknown

-- cardColorParse str = error ("Unknown card color: " <> str)

allCardColors :: Array CardColor
allCardColors =
  [ Green
  , Red
  , Blue
  , Yellow
  , Purple
  ]

instance showCardColor :: Show CardColor where
  show Green = "Green"
  show Red = "Red"
  show Blue = "Blue"
  show Yellow = "Yellow"
  show Purple = "Purple"
  show Unknown = "Unknown"

newtype Card
  = Card { id :: Int
    , age :: Int
    , color :: CardColor
    , title :: String
    , icons :: Map IconPosition String
    , hexagon :: String
    , dogmaIcon :: String
    , dogmaCondition1 :: String
    , dogmaCondition2 :: String
    , dogmaCondition3 :: String
    }

instance eqCard :: Eq Card where
  eq (Card a) (Card b) = (a.id == b.id)

instance ordCard :: Ord Card where
  compare (Card a) (Card b) =
    if a.id < b.id then
      LT
    else if a.id > b.id then
      GT
    else
      EQ

cardHasIcon :: Card -> String -> Boolean
cardHasIcon (Card c) str = 
  case find (\v -> v == str) (values c.icons) of
    Just _ -> 1 == 1
    Nothing -> 1 == 0

foreign import shuffleArray :: Array String -> Effect (Array String)

cardBackground :: CardColor -> String
cardBackground color = "images/" <> (toLower (show color)) <> ".jpg"

-- cardBackgrounds :: Map CardColor String
-- cardBackgrounds =
--   allCardColors
--     |> Array.map (fun color ->
--         let name = CardColor.ToString(color)
--         (color, $"imagers/{name.ToLowerInvariant()}.jpg"))
--     |> Map.ofArray
