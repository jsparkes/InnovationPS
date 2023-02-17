module CardFunctions where

import Prelude

import Board (Board(..))
import Board as Board
import Cards (Card(..))
import Cards as Cards
import Data.Maybe (Maybe(..))
import Player (Player(..))
import Player as Player

promptForCard :: Int -> String -> Maybe Card
promptForCard _playerPos _prompt =
  Nothing

agriculture :: Board -> Int -> Card -> Board
agriculture b@(Board board) pos (Card card) = do
  let p = Board.getPlayer b pos
  case p of
    Nothing -> Board board -- should panic here!
    Just player -> do
      let
        dis =
          if pos == 0 then
            promptForCard pos card.dogmaCondition1
          else
            -- If we implment tree evaluation, we can try all possible cards.
            -- Simpler to just pick the highest.
            Player.getHighestCard player
      case dis of
        Nothing -> Board board
        Just discard -> do
          let
            p1 = Player.removeCardFromHand player discard
            p2 = Player.scoreCard p1 discard
          Board.updatePlayer b p2 pos

