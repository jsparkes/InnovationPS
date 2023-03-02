module Board where

import Prelude

import Data.Argonaut (class DecodeJson, class EncodeJson)
import Data.Argonaut.Decode.Generic (genericDecodeJson)
import Data.Argonaut.Encode.Generic (genericEncodeJson)
import Data.Array.NonEmpty (NonEmptyArray, updateAt, (!!))
import Data.Generic.Rep (class Generic)
import Data.Maybe (Maybe(..))
import Data.Show.Generic (genericShow)
import Player (Player(..))
import Player as Player


newtype Board = Board
  { players :: NonEmptyArray Player
  , dogmaCopied :: Boolean
  }

derive instance genericPlayer :: Generic Board _

instance showPlayer :: Show Board where
  show = genericShow

instance encodePlayer :: EncodeJson Board where
  encodeJson = genericEncodeJson

instance decodePlayer :: DecodeJson Board where
  decodeJson = genericDecodeJson

getPlayer :: Board -> Int -> Maybe Player
-- Need to range chec khere
getPlayer (Board board) pos = board.players !! pos

updatePlayer :: Board -> Player -> Int -> Board
updatePlayer (Board board) player pos = do
  let p = updateAt pos player board.players
  case p of 
    Nothing -> Board board
    Just players -> Board (board { players = players})

-- One of the AI players has used the player's dogma
copyDogma :: Board -> Board
copyDogma (Board board) = Board (board { dogmaCopied = true })


