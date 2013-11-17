
module Chess where
import Data.Maybe
import Test.QuickCheck  

-- A main board for playing Chess. Contains a list of lists of squares
type ChessBoard = [[Square]]

-- Define a square as either a Piece or Nothing.
type Square = Maybe Piece

-- A Piece only has i color and a type. 
data Piece      = Piece  PieceColor PieceType
-- Chess is played with only two colors
data PieceColor = White | Black
-- The different types of chess pieces. 
data PieceType  = King | Queen | Bishop | Rock | Knight | Pawn

