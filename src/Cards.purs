module Cards where

import Prelude

import Data.Argonaut (Json, JsonDecodeError, decodeJson, parseJson, printJsonDecodeError)
import Data.Argonaut.Decode (class DecodeJson, JsonDecodeError, parseJson)
import Data.Argonaut.Decode.Generic (genericDecodeJson)
import Data.Argonaut.Encode (class EncodeJson)
import Data.Argonaut.Encode.Generic (genericEncodeJson)
import Data.Array as Data.Array
import Data.Array.NonEmpty (fromFoldable)
import Data.Either (Either(..))
import Data.Foldable (find)
import Data.Generic.Rep (class Generic)
import Data.Int (Radix(..), decimal)
import Data.Int as Data.Int
import Data.List (tail)
import Data.Map (Map, lookup, values)
import Data.Map as Data.Map
import Data.Maybe (Maybe(..), fromMaybe)
import Data.Newtype (traverse)
import Data.Show.Generic (genericShow)
import Data.String (Pattern(..), contains, toLower)
import Data.Traversable (for, sequence)
import Data.Tuple.Nested ((/\))
import Effect (Effect)
import Effect.Aff (Aff, error)
import Effect.Aff.Class (liftAff)
import Effect.Class (liftEffect)
import Effect.Exception (error, throw, throwException)
import Node.Encoding (Encoding(..))
import Node.FS.Aff (readTextFile)
import Node.FS.Aff as FS
import Parsing (runParser)
import Parsing.CSV (Parsers, makeParsers)
import Web.HTML.Event.EventTypes (offline)

-- import Effect.Exception (error)
data IconPosition
  = IconTop
  | IconLeft
  | IconMiddle
  | IconRight

derive instance eqIconPosition :: Eq IconPosition

derive instance ordIconPosition :: Ord IconPosition

derive instance genericIconPosition :: Generic IconPosition _

instance Show IconPosition where
  show = genericShow

instance EncodeJson IconPosition where
  encodeJson = genericEncodeJson

instance DecodeJson IconPosition where
  decodeJson = genericDecodeJson


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

derive instance genericCardColor :: Generic CardColor _

-- instance showCard :: Show CardColor where
--   show = genericShow

instance encodeCardColor :: EncodeJson CardColor where
  encodeJson = genericEncodeJson

instance decodeCardColor :: DecodeJson CardColor where
  decodeJson = genericDecodeJson

-- derive instance eqCardColor :: Eq CardColor
instance showCardColor :: Show CardColor where
  show Green = "Green"
  show Red = "Red"
  show Blue = "Blue"
  show Yellow = "Yellow"
  show Purple = "Purple"
  show Unknown = "Unknown"

newtype Card
  = Card
  { id :: Int
  , age :: Int
  , color :: CardColor
  , title :: String
  , top :: String
  , left :: String
  , middle :: String
  , right :: String
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

derive instance genericCard :: Generic Card _

instance showCard :: Show Card where
  show = genericShow

instance encodeCard :: EncodeJson Card where
  encodeJson = genericEncodeJson

instance decodeCard :: DecodeJson Card where
  decodeJson = genericDecodeJson

cardHasIcon :: Card -> String -> Boolean
cardHasIcon (Card card) icon =
  let
    p = Pattern icon
  in
    contains p card.top || contains p card.left || contains p card.middle || contains p card.right

-- cardHasIcon (Card c) str = case find (\v -> v == str) (values c.icons) of
--   Just _ -> 1 == 1
--   Nothing -> 1 == 0
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
getInnovationTxt :: Aff String
getInnovationTxt = do
  -- response <- AX.get AXR.String "https://raw.githubusercontent.com/jsparkes/innovation/master/Innovation.txt"
  -- case response of
  --   Left err -> throwException (error "Unable to retrieve card description URL: " <> (show err))
  --   Right contents -> contents
  FS.readTextFile UTF8 "../innovation.txt"

parsers :: Parsers String
parsers = makeParsers '\"' "\t" "\n"

getInt :: String -> Map String String -> Int
getInt key map = lookup key map # fromMaybe "0" # Data.Int.fromStringAs decimal # fromMaybe 0

getString :: String -> Map String String -> String
getString key map = lookup key map # fromMaybe ""

getIconMap :: Map String String -> Map IconPosition String
getIconMap map = do
  ( Data.Map.fromFoldable
      [ IconTop
          /\ (getString "Top" map)
      , IconLeft
          /\ (getString "Left" map)
      , IconMiddle
          /\ (getString "Middle" map)
      , IconRight
          /\ (getString "Right" map)
      ]
  )

makeCard :: Map String String -> Card
makeCard map =
  Card
    { id: getInt "Id" map
    , age: getInt "Age" map
    , color: cardColorParse $ getString "Color" map
    , title: getString "Title" map
    , icons: getIconMap map
    , top : ""
    , left: ""
    , middle: ""
    , right: ""
    , hexagon: getString "Hexagon (info only)" map
    , dogmaIcon: getString "Dogma Icon" map
    , dogmaCondition1: getString "Dogma Condition 1" map
    , dogmaCondition2: getString "Dogma Condition 2" map
    , dogmaCondition3: getString "Dogma Condition 3" map
    }
-- parseCards :: String -> Aff (Array Card)
-- parseCards content = do
--   let rows = 
--             case runParser parsers.fileHeaded content (Array String) offline
--                 Left err -> pure $ throw "failing to parse card data"
--                 Right val -> val
--   -- rows <- parsers.fileHeaded content
--   for rows makeCard # Data.Array.fromFoldable
 
-- readJsonFile :: String -> Aff (Either JsonDecodeError (Array Card))
-- readJsonFile file = do
--   contents <- readTextFile UTF8 file
--   let parsed = parseJson contents
--   case parsed of 
--     Left err -> pure err
--     Right json ->
--       -- pure (decodeJson json :: Either JsonDecodeError (Array Card))
--       pure $ decodeJson json
