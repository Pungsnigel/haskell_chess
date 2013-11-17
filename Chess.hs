
module Chess where
import Data.Maybe
import Test.QuickCheck  

-- A main board for playing Chess. Contains a list of lists of squares
type ChessBoard = [[Square]]

-- Define a square as either a Piece or Nothing.
type Square = Maybe Piece

showSquare :: Square -> Char
showSquare Nothing  = ' '
showSquare (Just p) = showPiece p

-- A Piece only has i color and a type. 
data Piece      = Piece  PieceColor PieceType deriving(Show)
-- Chess is played with only two colors 
data PieceColor = White | Black deriving(Show)
-- The different types of chess pieces. 
data PieceType  = King | Queen | Bishop | Rook | Knight | Pawn deriving(Show)

showPiece :: Piece -> Char
showPiece (Piece White King)   = 'K'
showPiece (Piece White Queen)  = 'Q'
showPiece (Piece White Bishop) = 'B'
showPiece (Piece White Rook)   = 'R'
showPiece (Piece White Knight) = 'N'
showPiece (Piece White Pawn)   = 'P'
showPiece (Piece Black King)   = 'k'
showPiece (Piece Black Queen)  = 'q'
showPiece (Piece Black Bishop) = 'b'
showPiece (Piece Black Rook)   = 'r'
showPiece (Piece Black Knight) = 'n'

readPiece :: Char -> Piece
readPiece 'K' = (Piece White King)
readPiece 'Q' = (Piece White Queen)
readPiece 'B' = (Piece White Bishop)
readPiece 'R' = (Piece White Rook)
readPiece 'N' = (Piece White Knight)
readPiece 'P' = (Piece White Pawn)
readPiece 'k' = (Piece Black King)
readPiece 'q' = (Piece Black Queen)
readPiece 'b' = (Piece Black Bishop)
readPiece 'r' = (Piece Black Rook)
readPiece 'n' = (Piece Black Knight)
readPiece 'p' = (Piece Black Pawn)
