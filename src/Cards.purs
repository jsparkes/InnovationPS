module Cards where

import Prelude

import Data.Argonaut.Decode (class DecodeJson)
import Data.Argonaut.Decode.Generic (genericDecodeJson)
import Data.Argonaut.Encode (class EncodeJson)
import Data.Argonaut.Encode.Generic (genericEncodeJson)
import Data.Array ((!!))
import Data.Array as Array
import Data.Foldable as Foldable
import Data.Generic.Rep (class Generic)
import Data.Int (decimal)
import Data.Int as Data.Int
import Data.Map (Map, lookup)
import Data.Map as Data.Map
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe)
import Data.Show.Generic (genericShow)
import Data.String (Pattern(..), contains, toLower)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested ((/\))
import Effect.Aff (Aff)
import Node.Encoding (Encoding(..))
import Node.FS.Aff as FS
import Parsing.CSV (Parsers, makeParsers)
import Partial.Unsafe (unsafePartial)

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

-- | Unknown

-- instance cardColorPartial :: Partial CardColor

-- fixed set of inputs from innovation.txt, so no parse errors are possible
cardColorParse :: String -> CardColor
cardColorParse "Green" = Green

cardColorParse "Red" = Red

cardColorParse "Blue" = Blue

cardColorParse "Yellow" = Yellow

cardColorParse "Purple" = Purple

-- cardColorParse c = unsafePartial $ "Unknown card color: " <> c
cardColorParse _ = unsafePartial Green

-- cardColorParse str = error ("Unknown card color: " <> str)
allCardColors :: Array CardColor
allCardColors =
  [ Green
  , Red
  , Blue
  , Yellow
  , Purple
  ]

derive instance eqCardColor :: Eq CardColor

derive instance ordCardColor :: Ord CardColor

derive instance genericCardColor :: Generic CardColor _

-- instance showCard :: Show CardColor where
--   show = genericShow

instance encodeCardColor :: EncodeJson CardColor where
  encodeJson = genericEncodeJson

instance decodeCardColor :: DecodeJson CardColor where
  decodeJson = genericDecodeJson

-- derive instance eqCardColor :: Eq CardColor
instance showCardColor :: Show CardColor where
  show = genericShow

-- show Green = "Green"
-- show Red = "Red"
-- show Blue = "Blue"
-- show Yellow = "Yellow"
-- show Purple = "Purple"
-- show Unknown = "Unknown"

newtype Card = Card
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
  compare (Card a) (Card b) = compare a.id b.id

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
foreign import shuffleArray :: Array Card -> (Array Card)

cardBackground :: CardColor -> String
cardBackground color = "images/" <> (toLower (show color)) <> ".jpg"

cardBackgrounds :: Map CardColor String
cardBackgrounds =
  allCardColors
    # Array.foldMap (\color -> Map.singleton color ("../imagers/" <> toLower (show color) <> ".jpg"))

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
      [ IconTop /\ (getString "top" map)
      , IconLeft /\ (getString "left" map)
      , IconMiddle /\ (getString "middle" map)
      , IconRight /\ (getString "right" map)
      ]
  )

makeCard :: Map String String -> Card
makeCard map =
  Card
    { id: getInt "id" map
    , age: getInt "age" map
    , color: cardColorParse $ getString "color" map
    , title: getString "title" map
    , icons: getIconMap map
    , top: getString "top" map
    , left: getString "left" map
    , middle: getString "middle" map
    , right: getString "right" map
    , hexagon: getString "hexagon" map
    , dogmaIcon: getString "dogmaIcon" map
    , dogmaCondition1: getString "dogmaCondition1" map
    , dogmaCondition2: getString "dogmaCondition2" map
    , dogmaCondition3: getString "dogmaCondition3" map
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

newtype Deck = Deck (Array Card)

derive instance genericDeck :: Generic Deck _

derive instance eqDeck :: Eq Deck

derive instance ordDeck :: Ord Deck

instance showDeck :: Show Deck where
  show = genericShow

instance encodeDeck :: EncodeJson Deck where
  encodeJson = genericEncodeJson

instance decodeDeck :: DecodeJson Deck where
  decodeJson = genericDecodeJson

tuck :: Deck -> Card -> Deck
tuck (Deck d) (Card c) = Deck $ d <> Array.fromFoldable [ Card c ]

stack :: Deck -> Card -> Deck
stack (Deck d) (Card c) = Deck $ Card c Array.: d

unstack :: Deck -> Tuple Deck (Maybe Card)
unstack d@(Deck []) = Tuple d Nothing
unstack (Deck d) =
  let
    card = d !! 0
  in
    Tuple (Deck (Array.drop 1 d)) card

remove :: Deck -> Card -> Deck
remove (Deck d) (Card c) = Deck $ d # Array.filter (\(Card card) -> card.id == c.id)

shuffle :: Deck -> Deck
shuffle (Deck d) = Deck $ shuffleArray d

-- Look at the top card without removing it
topCard :: Deck -> Maybe Card
topCard (Deck []) = Nothing
topCard (Deck d) = Array.head d

getTopCard :: Deck -> (Tuple (Maybe Card) Deck)
getTopCard (Deck []) = Tuple Nothing (Deck [])
getTopCard (Deck d) = Tuple (Array.head d)
  ( Deck
      ( case Array.tail d of
          Nothing -> []
          Just x -> x
      )
  )

getCardByName :: Deck -> String -> Maybe Card
getCardByName (Deck d) n = d # Array.find (\(Card c) -> c.title == n)

getCardById :: Deck -> Int -> Maybe Card
getCardById (Deck d) id = d # Array.find (\(Card c) -> c.id == id)

getHighestCard :: Deck -> Maybe Card
getHighestCard (Deck d) = Foldable.maximum d

isHighestCard :: Deck -> Card -> Boolean
isHighestCard (Deck d) (Card c) =
  case getHighestCard (Deck d) of
    Nothing -> true
    Just (Card h) -> h.age == c.age

getHighestAgeCard :: Deck -> Maybe Card
getHighestAgeCard (Deck d) = Foldable.maximumBy (\(Card c1) (Card c2) -> compare c1.age c2.age) d

removeHighestAgeCard :: Deck -> Deck
removeHighestAgeCard (Deck d) =
  case getHighestAgeCard (Deck d) of
    Nothing -> Deck d
    Just (Card c) -> remove (Deck d) (Card c)

getLowestCard :: Deck -> Maybe Card
getLowestCard (Deck d) = Foldable.minimum d

isLowestCard :: Deck -> Card -> Boolean
isLowestCard (Deck d) (Card c) =
  case getLowestCard (Deck d) of
    Nothing -> true
    Just (Card l) -> l.age == c.age

getLowestAgeCard :: Deck -> Maybe Card
getLowestAgeCard (Deck d) = Foldable.minimumBy (\(Card c1) (Card c2) -> compare c1.age c2.age) d

removeLowestAgeCard :: Deck -> Deck
removeLowestAgeCard (Deck d) =
  case getLowestAgeCard (Deck d) of
    Nothing -> Deck d
    Just (Card c) -> remove (Deck d) (Card c)

getCardsByAge :: Deck -> Int -> Array Card
getCardsByAge (Deck d) age = Array.filter (\(Card c) -> c.age == age) d

-- Sometimes a specific age is removed from a score deck
removeCardByAge :: Deck -> Int -> Deck
removeCardByAge d age =
  case getCardsByAge d age # Array.head of
    Nothing -> d
    Just c -> remove d c

totalScore :: Deck -> Int
totalScore (Deck d) = Array.foldl (\acc (Card c) -> acc + c.age) 0 d

