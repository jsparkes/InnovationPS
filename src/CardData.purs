module CardData where

import Cards
import Data.Map as Map

cardData :: Array Card
cardData =
  [ Card
      { id: 1
      , age: 1
      , color: Yellow
      , title: "Agriculture"
      , top: "x"
      , left: "Leaf"
      , middle: "Leaf"
      , right: "Leaf"
      , hexagon: "Sheaf of grain"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "You may return a card from your hand. If you do, draw and score a card of value one higher than the card you returned."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String
      }
  , Card
      { id: 2
      , age: 1
      , color: Red
      , title: "Archery"
      , top: "Castle"
      , left: "Lightbulb"
      , middle: "x"
      , right: "Castle"
      , hexagon: "bow and arrow"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "I demand you draw a 1, then transfer the highest card in your hand to my hand!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String
      }
  , Card
      { id: 3
      , age: 1
      , color: Purple
      , title: "City States"
      , top: "x"
      , left: "Crown"
      , middle: "Crown"
      , right: "Castle"
      , hexagon: "Courthouse or temple"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you transfer a top card with a [Castle] from your board to my board if you have at least four [Castle] icons on your board! If you do, draw a 1!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 4
      , age: 1
      , color: Green
      , title: "Clothing"
      , top: "x"
      , left: "Crown"
      , middle: "Leaf"
      , right: "Leaf"
      , hexagon: "Toga"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "Meld a card from your hand of different color from any card on your board."
      , dogmaCondition2: "Draw and score a 1 for each color present on your board not present on any other player's board."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 5
      , age: 1
      , color: Purple
      , title: "Code of Laws"
      , top: "x"
      , left: "Crown"
      , middle: "Crown"
      , right: "Leaf"
      , hexagon: "Two tablets"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "You may tuck a card from your hand of the same color as any card on your board. If you do, you may splay that color of your cards left."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 6
      , age: 1
      , color: Yellow
      , title: "Domestication"
      , top: "Castle"
      , left: "Crown"
      , middle: "x"
      , right: "Castle"
      , hexagon: "Bull"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "Meld the lowest card in your hand. Draw a 1."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 7
      , age: 1
      , color: Yellow
      , title: "Masonry"
      , top: "Castle"
      , left: "x"
      , middle: "Castle"
      , right: "Castle"
      , hexagon: "Bricks"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "You may meld any number of cards from your hand, each with a [Castle]. If you melded four or more cards, claim the Monument achievement."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 8
      , age: 1
      , color: Red
      , title: "Metalworking"
      , top: "Castle"
      , left: "Castle"
      , middle: "x"
      , right: "Castle"
      , hexagon: "Spear and shield"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "Draw and reveal a 1. If it has a [Castle], score it and repeat this dogma effect. Otherwise, keep it."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 9
      , age: 1
      , color: Purple
      , title: "Mysticism"
      , top: "x"
      , left: "Castle"
      , middle: "Castle"
      , right: "Castle"
      , hexagon: "Crescent moon"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "Draw a 1. If it is the same color as any card on your board, meld it and draw a 1."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 10
      , age: 1
      , color: Red
      , title: "Oars"
      , top: "Castle"
      , left: "Crown"
      , middle: "x"
      , right: "Castle"
      , hexagon: "Oars"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "I demand you transfer a card with a [Crown] from your hand to my score pile! If you do, draw a 1."
      , dogmaCondition2: "If no cards were transferred due to this demand, draw a 1."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 11
      , age: 1
      , color: Blue
      , title: "Pottery"
      , top: "x"
      , left: "Leaf"
      , middle: "Leaf"
      , right: "Leaf"
      , hexagon: "Pot"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "You may return up to three cards from your hand. If you returned any cards, draw and score a card of value equal to the number of cards you returned."
      , dogmaCondition2: "Draw a 1."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 12
      , age: 1
      , color: Green
      , title: "Sailing"
      , top: "Crown"
      , left: "Crown"
      , middle: "x"
      , right: "Leaf"
      , hexagon: "Boat"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "Draw and meld a 1."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 13
      , age: 1
      , color: Green
      , title: "The Wheel"
      , top: "x"
      , left: "Castle"
      , middle: "Castle"
      , right: "Castle"
      , hexagon: "Wheel"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "Draw two 1."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 14
      , age: 1
      , color: Blue
      , title: "Tools"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "Castle"
      , hexagon: "Sickle and Hammer"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may return three cards from your hand. If you do, draw and meld a 3."
      , dogmaCondition2: "You may return a 3 from your hand. If you do, draw three 1."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 15
      , age: 1
      , color: Blue
      , title: "Writing"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "Crown"
      , hexagon: "Quill"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "Draw a 2."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 16
      , age: 2
      , color: Blue
      , title: "Calendar"
      , top: "x"
      , left: "Leaf"
      , middle: "Leaf"
      , right: "Lightbulb"
      , hexagon: "Sundial"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "If you have more cards in your score pile than in your hand, draw two 3."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 17
      , age: 2
      , color: Yellow
      , title: "Canal Building"
      , top: "x"
      , left: "Crown"
      , middle: "Leaf"
      , right: "Crown"
      , hexagon: "Gondola"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "You may exchange all the highest cards in your hand with all the highest cards in your score pile."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 18
      , age: 2
      , color: Red
      , title: "Construction"
      , top: "Castle"
      , left: "x"
      , middle: "Castle"
      , right: "Castle"
      , hexagon: "Catapult"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "I demand you transfer two cards from your hand to my hand, then draw a 2!"
      , dogmaCondition2: "If you are the only player with five top cards, claim the Empire achievement."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 19
      , age: 2
      , color: Green
      , title: "Currency"
      , top: "Leaf"
      , left: "Crown"
      , middle: "x"
      , right: "Crown"
      , hexagon: "Two ancient coins"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "You may return any number of cards from your hand. If you do, draw and score a 2 for every different value of card you returned."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 20
      , age: 2
      , color: Yellow
      , title: "Fermenting"
      , top: "Leaf"
      , left: "Leaf"
      , middle: "x"
      , right: "Castle"
      , hexagon: "Barrel"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "Draw a 2 for every two [Leaf] icons on your board."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 21
      , age: 2
      , color: Green
      , title: "Mapmaking"
      , top: "x"
      , left: "Crown"
      , middle: "Crown"
      , right: "Castle"
      , hexagon: "Treasure map"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you transfer a 1 from your score pile to my score pile."
      , dogmaCondition2: "If any card was transferred due to the demand, draw and score a 1."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 22
      , age: 2
      , color: Blue
      , title: "Mathematics"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Crown"
      , right: "Lightbulb"
      , hexagon: "Pi"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may return a card from your hand. If you do, draw and meld a card of value one higher than the card you returned."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 23
      , age: 2
      , color: Purple
      , title: "Monotheism"
      , top: "x"
      , left: "Castle"
      , middle: "Castle"
      , right: "Castle"
      , hexagon: "Cross"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "I demand you transfer a top card on your board of a different color from any card on my board to my score pile! If you do, draw and tuck a 1!"
      , dogmaCondition2: "Draw and tuck a 1."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 24
      , age: 2
      , color: Purple
      , title: "Philosophy"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "Lightbulb"
      , hexagon: "Glass with poisoned milk"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may splay left any one color of your cards."
      , dogmaCondition2: "You may score a card from your hand."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 25
      , age: 2
      , color: Red
      , title: "Road Building"
      , top: "Castle"
      , left: "Castle"
      , middle: "x"
      , right: "Castle"
      , hexagon: "Winding road"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "Meld one or two cards from your hand. If you melded two, you may transfer your top red card to another player's board. In exchange, transfer that player's top green card to your board."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 26
      , age: 3
      , color: Blue
      , title: "Alchemy"
      , top: "x"
      , left: "Leaf"
      , middle: "Castle"
      , right: "Castle"
      , hexagon: "Mortar and pestle"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "Draw and reveal a 4 for every three [Castle] icons on your board. If any of the drawn cards are red, return the cards drawn and all cards in your hand. Otherwise, keep them."
      , dogmaCondition2: "Meld a card from your hand, then score a card from your hand."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 27
      , age: 3
      , color: Green
      , title: "Compass"
      , top: "x"
      , left: "Crown"
      , middle: "Crown"
      , right: "Leaf"
      , hexagon: "Compass"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you transfer a top non-green card with a [Leaf] from your board to my board, and then transfer a top card without a [Leaf] from my board to your board."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 28
      , age: 3
      , color: Purple
      , title: "Education"
      , top: "Lightbulb"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "Apple"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may return the highest card from your score pile. If you do, draw a card of value two higher than the highest card remaining in your score pile."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 29
      , age: 3
      , color: Red
      , title: "Engineering"
      , top: "Castle"
      , left: "x"
      , middle: "Lightbulb"
      , right: "Castle"
      , hexagon: "Fortified castle"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "I demand you transfer all top cards with a [Castle] from your board to my score pile!"
      , dogmaCondition2: "You may splay your red cards left."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 30
      , age: 3
      , color: Purple
      , title: "Feudalism"
      , top: "x"
      , left: "Castle"
      , middle: "Leaf"
      , right: "Castle"
      , hexagon: "Shield(w/ cross) and sword"
      , dogmaIcon: "Castle"
      , dogmaCondition1: "I demand you transfer a card with a [Castle] from your hand to my hand!"
      , dogmaCondition2: "You may splay your yellow or purple cards left."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 31
      , age: 3
      , color: Yellow
      , title: "Machinery"
      , top: "Leaf"
      , left: "Leaf"
      , middle: "x"
      , right: "Castle"
      , hexagon: "Windmill"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "I demand you exchange all cards in your hand with all the highest cards in my hand!"
      , dogmaCondition2: "Score a card from your hand with a [Castle]. You may splay your red cards left."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 32
      , age: 3
      , color: Yellow
      , title: "Medicine"
      , top: "Crown"
      , left: "Leaf"
      , middle: "Leaf"
      , right: "x"
      , hexagon: "Caduceus"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "I demand you exchange the highest card in your score pile with the lowest card in my score pile!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 33
      , age: 3
      , color: Red
      , title: "Optics"
      , top: "Crown"
      , left: "Crown"
      , middle: "Crown"
      , right: "x"
      , hexagon: "Telescope"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "Draw and meld a 3. If it has a [Crown], draw and score a 4. Otherwise, transfer a card from your score pile to the score pile of an opponent with fewer points than you."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 34
      , age: 3
      , color: Green
      , title: "Paper"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "Crown"
      , hexagon: "Book"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may splay your green or blue cards left."
      , dogmaCondition2: "Draw a 4 for every color you have splayed left."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 35
      , age: 3
      , color: Blue
      , title: "Translation"
      , top: "x"
      , left: "Crown"
      , middle: "Crown"
      , right: "Crown"
      , hexagon: "Hieroglyph and two letters in the demotic script"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "You may meld all the cards in your score pile. If you meld one, you must meld them all."
      , dogmaCondition2: "If each top card on your board has a [Crown], claim the World achievement."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 36
      , age: 4
      , color: Yellow
      , title: "Anatomy"
      , top: "Leaf"
      , left: "Leaf"
      , middle: "Leaf"
      , right: "x"
      , hexagon: "Skull"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "I demand you return a card from your score pile! If you do, return a top card of equal value from your board!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 37
      , age: 4
      , color: Red
      , title: "Colonialism"
      , top: "x"
      , left: "Factory"
      , middle: "Lightbulb"
      , right: "Factory"
      , hexagon: "Union jack"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "Draw and tuck a 3. If it has a [Crown], repeat this dogma effect."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 38
      , age: 4
      , color: Purple
      , title: "Enterprise"
      , top: "x"
      , left: "Crown"
      , middle: "Crown"
      , right: "Crown"
      , hexagon: "Signed contract"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you transfer a top non-purple card with a [Crown] from your board to my board! If you do, draw and meld a 4!"
      , dogmaCondition2: "You may splay your green cards right."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 39
      , age: 4
      , color: Blue
      , title: "Experimentation"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "Lightbulb"
      , hexagon: "Tower of Pisa"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "Draw and meld a 5."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 40
      , age: 4
      , color: Red
      , title: "Gunpowder"
      , top: "x"
      , left: "Factory"
      , middle: "Crown"
      , right: "Factory"
      , hexagon: "Muskets"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "I demand you transfer a top card with a [Castle] from your board to my score pile!"
      , dogmaCondition2: "If any card was transferred due to the demand, draw and score a 2."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 41
      , age: 4
      , color: Green
      , title: "Invention"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "Factory"
      , hexagon: "Vitruvian Man"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may splay right any one color of your cards currently splayed left. If you do, draw and score a 4."
      , dogmaCondition2: "If you have five colors splayed, each in any direction, claim the Wonder achievement."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 42
      , age: 4
      , color: Green
      , title: "Navigation"
      , top: "x"
      , left: "Crown"
      , middle: "Crown"
      , right: "Crown"
      , hexagon: "Sextant"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you transfer a 2 or 3 from your score pile to my score pile!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 43
      , age: 4
      , color: Yellow
      , title: "Perspective"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "Leaf"
      , hexagon: "Man inspecting ship on horizon"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may return a card from your hand. If you do, score a card from your hand for every two [LIghtbulb] icons on your board."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 44
      , age: 4
      , color: Blue
      , title: "Printing Press"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "Crown"
      , hexagon: "Press"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may return a card from your score pile. If you do, draw a card of value two higher than the top purple card on your board."
      , dogmaCondition2: "You may splay your blue cards right."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 45
      , age: 4
      , color: Purple
      , title: "Reformation"
      , top: "Leaf"
      , left: "Leaf"
      , middle: "x"
      , right: "Leaf"
      , hexagon: "Cathedral"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "You may tuck a card from your hand for every two [Leaf] icons on your board."
      , dogmaCondition2: "You may splay your yellow or purple cards right."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 46
      , age: 5
      , color: Purple
      , title: "Astronomy"
      , top: "Crown"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "Observatory"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "Draw and reveal a 6. If the card is green or blue, meld it and repeat this dogma effect."
      , dogmaCondition2: "If all non-purple top cards on your board are value 6 or higher, claim the Universe achievement."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 47
      , age: 5
      , color: Green
      , title: "Banking"
      , top: "Factory"
      , left: "Crown"
      , middle: "x"
      , right: "Crown"
      , hexagon: "Two piles of notes and a coin"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you transfer a top non-green card with a [Factory] from your board to my board! If you do, draw and score a 5."
      , dogmaCondition2: "You may splay your green cards right."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 48
      , age: 5
      , color: Blue
      , title: "Chemistry"
      , top: "Factory"
      , left: "Lightbulb"
      , middle: "Factory"
      , right: "x"
      , hexagon: "Erlenmeyer flask full of liquid"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "You may splay your blue cards right."
      , dogmaCondition2: "Draw and score a card of value one higher than the highest top card on your board and then return a card from your score pile."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 49
      , age: 5
      , color: Red
      , title: "Coal"
      , top: "Factory"
      , left: "Factory"
      , middle: "Factory"
      , right: "x"
      , hexagon: "Lumps of coal or a fossil"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "Draw and tuck a 5."
      , dogmaCondition2: "You may splay your red cards right."
      , dogmaCondition3: "You may score any one of your top cards. If you do, also score the card beneath it."
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 50
      , age: 5
      , color: Green
      , title: "Measurement"
      , top: "Lightbulb"
      , left: "Leaf"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "Ruler"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may return a card from your hand. If you do, splay any one color of your cards right, and draw a card of value equal to the number of cards of that color on your board."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 51
      , age: 5
      , color: Blue
      , title: "Physics"
      , top: "Factory"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "Spectrum of light"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "Draw three 6 and reveal them. If two or more of the drawn cards are of the same color, return the drawn cards and all the cards in your hand. Otherwise, keep them."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 52
      , age: 5
      , color: Red
      , title: "The Pirate Code"
      , top: "Crown"
      , left: "Factory"
      , middle: "Crown"
      , right: "x"
      , hexagon: "Skull and cross bones"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you transfer two cards of value 4 or less from your score pile to my score pile!"
      , dogmaCondition2: "If any card was transferred due to the demand, score the lowest top card with a [Crown] from your board."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 53
      , age: 5
      , color: Purple
      , title: "Societies"
      , top: "Crown"
      , left: "x"
      , middle: "Lightbulb"
      , right: "Crown"
      , hexagon: "Crowd of people"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you transfer a top non-purple card with a [Lightbulb] from your board to my board! If you do, draw a 5!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 54
      , age: 5
      , color: Yellow
      , title: "Statistics"
      , top: "Leaf"
      , left: "Lightbulb"
      , middle: "Leaf"
      , right: "x"
      , hexagon: "Two birds in flight"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "I demand you draw the highest card in your score pile! If you do, and have only one card in your hand afterwards, repeat this demand!"
      , dogmaCondition2: "You may splay your yellow cards right."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 55
      , age: 5
      , color: Yellow
      , title: "Steam Engine"
      , top: "x"
      , left: "Factory"
      , middle: "Crown"
      , right: "Factory"
      , hexagon: "Gauge connected to a pipe"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "Draw and tuck two 4, then score your bottom yellow card."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 56
      , age: 6
      , color: Blue
      , title: "Atomic Theory"
      , top: "Lightbulb"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "Cartoon of an atom"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may splay your blue cards right."
      , dogmaCondition2: "Draw and meld a 7."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 57
      , age: 6
      , color: Yellow
      , title: "Canning"
      , top: "x"
      , left: "Factory"
      , middle: "Leaf"
      , right: "Factory"
      , hexagon: "Pyramid made of cans"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "You may draw and tuck a 6. If you do, score all your top cards without a [Factory]."
      , dogmaCondition2: "You may splay your yellow cards right."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 58
      , age: 6
      , color: Green
      , title: "Classification"
      , top: "Lightbulb"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "Turtle"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "Reveal the color of a card from your hand. Take into your hand all cards of that color from all other player's hands. Then, meld all cards of that color from your hand."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 59
      , age: 6
      , color: Purple
      , title: "Democracy"
      , top: "Crown"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "two multiple choice squares, with the bottom one checked off"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may return any number of cards from your hand. If you have returned more cards than any other player due to Democracy this phase, draw and score an 8."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 60
      , age: 6
      , color: Purple
      , title: "Emancipation"
      , top: "Factory"
      , left: "Lightbulb"
      , middle: "Factory"
      , right: "x"
      , hexagon: "Shackle snapping in half"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "I demand you transfer a card from your hand to my score pile! If you do, draw a 6!"
      , dogmaCondition2: "You may splay your red or purple cards right."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 61
      , age: 6
      , color: Blue
      , title: "Encyclopedia"
      , top: "x"
      , left: "Crown"
      , middle: "Crown"
      , right: "Crown"
      , hexagon: "Large pile of book, with an open book at the top"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "You may meld all the highest cards in your score pile. If you meld one of the highest, you must meld all of the highest."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 62
      , age: 6
      , color: Red
      , title: "Industrialization"
      , top: "Crown"
      , left: "Factory"
      , middle: "Factory"
      , right: "x"
      , hexagon: "Three smokestacks with billowing smoke"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "Draw and tuck a 6 for every two [Factory] icons on your board."
      , dogmaCondition2: "You may splay your red or purple cards right."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 63
      , age: 6
      , color: Red
      , title: "Machine Tools"
      , top: "Factory"
      , left: "Factory"
      , middle: "x"
      , right: "Factory"
      , hexagon: "Cog"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "Draw and score a card of value equal to the highest card in your score pile."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 64
      , age: 6
      , color: Green
      , title: "Metric System"
      , top: "x"
      , left: "Factory"
      , middle: "Crown"
      , right: "Crown"
      , hexagon: "Wrench"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "If your green cards are splayed right, you may splay any color of your cards right."
      , dogmaCondition2: "You may splay your green cards right."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 65
      , age: 6
      , color: Yellow
      , title: "Vaccination"
      , top: "Leaf"
      , left: "Factory"
      , middle: "Leaf"
      , right: "x"
      , hexagon: "Syringe"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "I demand you return all the lowest cards in your score pile! If you returned any, draw and meld a 6!"
      , dogmaCondition2: "If any card was returned as a result of the demand, draw and meld a 7."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 66
      , age: 7
      , color: Green
      , title: "Bicycle"
      , top: "Crown"
      , left: "Crown"
      , middle: "Clock"
      , right: "x"
      , hexagon: "Bicycle"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "You may exchange all the cards in your hand with all the cards in your score pile. If you exchange one, you must exchange them all."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 67
      , age: 7
      , color: Red
      , title: "Combustion"
      , top: "Crown"
      , left: "Crown"
      , middle: "Factory"
      , right: "x"
      , hexagon: "Automobile"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you transfer two cards from your score pile to my score pile!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 68
      , age: 7
      , color: Green
      , title: "Electricity"
      , top: "Lightbulb"
      , left: "Factory"
      , middle: "x"
      , right: "Factory"
      , hexagon: "Lightning bolt"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "Return all your top cards without a [Factory], then draw an 8 for each card you returned."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 69
      , age: 7
      , color: Blue
      , title: "Evolution"
      , top: "Lightbulb"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "Puddle with two organisms, or an amoeba"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may choose to either draw and score an 8 and then return a card from your score pile,\nor draw a card of value one higher than the highest card in your score pile."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 70
      , age: 7
      , color: Red
      , title: "Explosives"
      , top: "x"
      , left: "Factory"
      , middle: "Factory"
      , right: "Factory"
      , hexagon: "Grenade"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "I demand you transfer your three highest cards from your hand to my hand! If you do, and then have no cards in hand, draw a 7!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 71
      , age: 7
      , color: Purple
      , title: "Lighting"
      , top: "x"
      , left: "Leaf"
      , middle: "Clock"
      , right: "Leaf"
      , hexagon: "Glowing street lamp"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "You may tuck up to three cards from your hand. If you do, draw and score a 7 for every different value of card you tucked."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 72
      , age: 7
      , color: Blue
      , title: "Publications"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Clock"
      , right: "Lightbulb"
      , hexagon: "Signed book"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may rearrange the order of one color of cards on your board."
      , dogmaCondition2: "You may splay your yellow or blue cards up."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 73
      , age: 7
      , color: Purple
      , title: "Railroad"
      , top: "Clock"
      , left: "Factory"
      , middle: "Clock"
      , right: "x"
      , hexagon: "Railroad tracks"
      , dogmaIcon: "Clock"
      , dogmaCondition1: "Return all cards from your hand, then draw three 6."
      , dogmaCondition2: "You may splay up any one color of your cards currently splayed right."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 74
      , age: 7
      , color: Yellow
      , title: "Refrigeration"
      , top: "x"
      , left: "Leaf"
      , middle: "Leaf"
      , right: "Crown"
      , hexagon: "Refrigerator"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "I demand you return half (rounded down) of the cards in your hand!"
      , dogmaCondition2: "You may score a card from your hand."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 75
      , age: 7
      , color: Yellow
      , title: "Sanitation"
      , top: "Leaf"
      , left: "Leaf"
      , middle: "x"
      , right: "Leaf"
      , hexagon: "Trash can"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "I demand you exchange the two highest cards in your hand with the lowest card in my hand!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 76
      , age: 8
      , color: Yellow
      , title: "Antibiotics"
      , top: "Leaf"
      , left: "Leaf"
      , middle: "Leaf"
      , right: "x"
      , hexagon: "Pill"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "You may return up to three cards from your hand. For every different value of card that you returned, draw two 8."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 77
      , age: 8
      , color: Green
      , title: "Corporations"
      , top: "x"
      , left: "Factory"
      , middle: "Factory"
      , right: "Crown"
      , hexagon: "Histogram"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "I demand you transfer a top non-green card with a [Factory] from your board to my score pile! If you do, draw and meld an 8."
      , dogmaCondition2: "Draw and meld an 8."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 78
      , age: 8
      , color: Purple
      , title: "Empiricism"
      , top: "Lightbulb"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "Microscope"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "Choose two colors, then draw and reveal a 9. If it is either of the colors you chose, meld it and you may splay your cards of that color up."
      , dogmaCondition2: "If you have twenty or more [Lightbulb] icons on your board, you win."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 79
      , age: 8
      , color: Red
      , title: "Flight"
      , top: "Crown"
      , left: "x"
      , middle: "Clock"
      , right: "Crown"
      , hexagon: "Airplane"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "If your red cards are splayed up, you may splay any one color of your cards up."
      , dogmaCondition2: "You may splay your red cards up."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 80
      , age: 8
      , color: Green
      , title: "Mass Media"
      , top: "Lightbulb"
      , left: "x"
      , middle: "Clock"
      , right: "Lightbulb"
      , hexagon: "Microphone"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may return a card from your hand. If you do, choose a value, and return all cards of that value from all score piles."
      , dogmaCondition2: "You may splay your purple cards up."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 81
      , age: 8
      , color: Red
      , title: "Mobility"
      , top: "x"
      , left: "Factory"
      , middle: "Clock"
      , right: "Factory"
      , hexagon: "Tank"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "I demand you transfer your two highest non-red cards without a [Factory] from your board to my score pile! If you transferred any cards, draw an 8!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 82
      , age: 8
      , color: Blue
      , title: "Quantum Theory"
      , top: "Clock"
      , left: "Clock"
      , middle: "Clock"
      , right: "x"
      , hexagon: "Wireframe"
      , dogmaIcon: "Clock"
      , dogmaCondition1: "You may return up to two cards from your hand. If you return two, draw a 10 and then draw and score a 10."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 83
      , age: 8
      , color: Blue
      , title: "Rocketry"
      , top: "Clock"
      , left: "Clock"
      , middle: "Clock"
      , right: "x"
      , hexagon: "Rocket"
      , dogmaIcon: "Clock"
      , dogmaCondition1: "Return a card in any other player's score pile for every two [Clock] icons on your board."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 84
      , age: 8
      , color: Yellow
      , title: "Skyscrapers"
      , top: "x"
      , left: "Factory"
      , middle: "Crown"
      , right: "Crown"
      , hexagon: "Skyscraper"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you transfer a top non-yellow card with a [Clock] from your board to my board! If you do, score the card beneath it, and return all other cards from that pile!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 85
      , age: 8
      , color: Purple
      , title: "Socialism"
      , top: "Leaf"
      , left: "x"
      , middle: "Leaf"
      , right: "Leaf"
      , hexagon: "Communist party logo"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "You may tuck all cards from your hand. If you tuck one, you must tuck them all. If you tucked at least one purple card, take all the lowest cards in each other player's hand into your hand."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 86
      , age: 9
      , color: Green
      , title: "Collaboration"
      , top: "x"
      , left: "Crown"
      , middle: "Clock"
      , right: "Crown"
      , hexagon: "Two shaking hands"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "I demand you draw two 9 and reveal them. Transfer the card of my choice to my board, and meld the other."
      , dogmaCondition2: "If you have ten or more green cards on your board, you win."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 87
      , age: 9
      , color: Red
      , title: "Composites"
      , top: "Factory"
      , left: "Factory"
      , middle: "x"
      , right: "Factory"
      , hexagon: "Tank"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "I demand you transfer all but one card from your hand to my hand! Also, transfer the highest card from your score pile to my score pile!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 88
      , age: 9
      , color: Blue
      , title: "Computers"
      , top: "Clock"
      , left: "x"
      , middle: "Clock"
      , right: "Factory"
      , hexagon: "Computer"
      , dogmaIcon: "Clock"
      , dogmaCondition1: "You may splay your red cards or your green cards up."
      , dogmaCondition2: "Draw and meld a 10, then execute its non-demand dogma effects for yourself only."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 89
      , age: 9
      , color: Yellow
      , title: "Ecology"
      , top: "Leaf"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "Recycling icon"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may return a card from your hand. If you do, score a card from your hand and draw two 10."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 90
      , age: 9
      , color: Red
      , title: "Fission"
      , top: "x"
      , left: "Clock"
      , middle: "Clock"
      , right: "Clock"
      , hexagon: "Nuclear mushroom cloud"
      , dogmaIcon: "Clock"
      , dogmaCondition1: "I demand you draw a 10! If it is red, remove all hands, boards, and score piles from the game! If this occurs, the dogma action is complete."
      , dogmaCondition2: "Return a top card other than Fission from any player's board."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 91
      , age: 9
      , color: Blue
      , title: "Genetics"
      , top: "Lightbulb"
      , left: "Lightbulb"
      , middle: "Lightbulb"
      , right: "x"
      , hexagon: "DNA helix"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "Draw and meld a 10. Score all cards beneath it."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 92
      , age: 9
      , color: Green
      , title: "Satellites"
      , top: "x"
      , left: "Clock"
      , middle: "Clock"
      , right: "Clock"
      , hexagon: "Satellite"
      , dogmaIcon: "Clock"
      , dogmaCondition1: "Return all cards from your hand, and draw three 8."
      , dogmaCondition2: "You may splay your purple cards up."
      , dogmaCondition3: "Meld a card from your hand and then execute each of its non-demand dogma effects for yourself only."
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 93
      , age: 9
      , color: Purple
      , title: "Services"
      , top: "x"
      , left: "Leaf"
      , middle: "Leaf"
      , right: "Leaf"
      , hexagon: "Gas pump"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "I demand you transfer all the highest cards from your score pile to my hand! If you transferred any cards, then transfer a top card from my board without a [Leaf] to your hand!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 94
      , age: 9
      , color: Purple
      , title: "Specialization"
      , top: "x"
      , left: "Factory"
      , middle: "Leaf"
      , right: "Factory"
      , hexagon: "Scalpel"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "Reveal a card from your hand. Take into your hand the top card of that color from all other players' boards."
      , dogmaCondition2: "You may splay your yellow or blue cards up."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 95
      , age: 9
      , color: Yellow
      , title: "Suburbia"
      , top: "x"
      , left: "Crown"
      , middle: "Leaf"
      , right: "Leaf"
      , hexagon: "three large houses, 2.6 kids and a dog in each"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "You may tuck any number of cards from your hand. Draw and score a 1 for each card you tucked."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 96
      , age: 10
      , color: Purple
      , title: "A.I."
      , top: "Lightbulb"
      , left: "Lightbulb"
      , middle: "Clock"
      , right: "x"
      , hexagon: "Robot overlords"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "Draw and score a 10."
      , dogmaCondition2: "If Robotics and Software are top cards on any board, the single player with the lowest score wins."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 97
      , age: 10
      , color: Blue
      , title: "Bioengineering"
      , top: "Lightbulb"
      , left: "Clock"
      , middle: "Clock"
      , right: "x"
      , hexagon: "Biohazard icon"
      , dogmaIcon: "Clock"
      , dogmaCondition1: "Transfer a top card with a [Leaf] from any other player's board to your score pile."
      , dogmaCondition2: "If any player has fewer than three [Leaf] icons on their board, the single player with the most [Leaf] icons on their board wins."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 98
      , age: 10
      , color: Green
      , title: "Databases"
      , top: "x"
      , left: "Clock"
      , middle: "Clock"
      , right: "Clock"
      , hexagon: "Spreadsheet"
      , dogmaIcon: "Clock"
      , dogmaCondition1: "I demand you return half (rounded up) of the cards in your score pile!"
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 99
      , age: 10
      , color: Yellow
      , title: "Globalization"
      , top: "x"
      , left: "Factory"
      , middle: "Factory"
      , right: "Factory"
      , hexagon: "Globe"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "I demand you return a top card with a [Leaf] on your board!"
      , dogmaCondition2: "Draw and score a 6. If no player has more [Leaf] icons than [Factory] icons on their board, the single player with the most points wins."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 100
      , age: 10
      , color: Red
      , title: "Miniaturization"
      , top: "x"
      , left: "Lightbulb"
      , middle: "Clock"
      , right: "Lightbulb"
      , hexagon: "Silicon chip"
      , dogmaIcon: "Lightbulb"
      , dogmaCondition1: "You may return a card from your hand. If you returned a 10, draw a 10 for every different value of card in your score pile."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 101
      , age: 10
      , color: Red
      , title: "Robotics"
      , top: "x"
      , left: "Factory"
      , middle: "Clock"
      , right: "Factory"
      , hexagon: "Robot"
      , dogmaIcon: "Factory"
      , dogmaCondition1: "Score your top green card. Draw and meld a 10, then execute its non-demand dogma effects for yourself only."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 102
      , age: 10
      , color: Green
      , title: "Self Service"
      , top: "x"
      , left: "Crown"
      , middle: "Crown"
      , right: "Crown"
      , hexagon: "Vending machine"
      , dogmaIcon: "Crown"
      , dogmaCondition1: "Execute the non-demand dogma effects of any other top card on your board for yourself only."
      , dogmaCondition2: "If you have more achievements than each other player, you win."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 103
      , age: 10
      , color: Blue
      , title: "Software"
      , top: "Clock"
      , left: "Clock"
      , middle: "Clock"
      , right: "x"
      , hexagon: "Floppy disk"
      , dogmaIcon: "Clock"
      , dogmaCondition1: "Draw and score a 10."
      , dogmaCondition2: "Draw and meld two 10, then execute the second card's non-demand dogma effects for yourself only."
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 104
      , age: 10
      , color: Yellow
      , title: "Stem Cells"
      , top: "x"
      , left: "Leaf"
      , middle: "Leaf"
      , right: "Leaf"
      , hexagon: "Cell with a large nucleus"
      , dogmaIcon: "Leaf"
      , dogmaCondition1: "You may score all cards from your hand. If you score one, you must score them all."
      , dogmaCondition2: ""
      , dogmaCondition3: ""
      , icons: Map.empty :: Map.Map IconPosition String }
  , Card
      { id: 105
      , age: 10
      , color: Purple
      , title: "The Internet"
      , top: "x"
      , left: "Clock"
      , middle: "Clock"
      , right: "Lightbulb"
      , hexagon: "Ethernet port"
      , dogmaIcon: "Clock"
      , dogmaCondition1: "You may splay your green cards up."
      , dogmaCondition2: "Draw and score a 10."
      , dogmaCondition3: "Draw and meld a 10 for every two [Clock] icons on your board."
      , icons: Map.empty :: Map.Map IconPosition String }
  ]
