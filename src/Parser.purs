module Parser where

import Control.Alt ((<|>))
import Data.List (many, some)
import Data.Maybe (Maybe(..))
import Text.Parsing.Parser.Combinators (endBy1, sepBy1, optionMaybe, try, chainl, between)
import Text.Parsing.Parser.String (eof, string, char, satisfy, anyChar)

data CharKind=Character Char|Symbol Char|Space|NewLine

