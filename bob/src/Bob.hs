module Bob (responseFor) where

import Data.Text as T
import Data.Text (Text)
import Data.Char (isLetter)

responseFor :: Text -> Text
responseFor xs
 | isSilence xs = pack "Fine. Be that way!"
 | isQuestion xs && isYelling xs = pack "Calm down, I know what I'm doing!"
 | isQuestion xs = pack "Sure."
 | isYelling xs = pack "Whoa, chill out!"
 | otherwise = pack "Whatever."

isQuestion :: Text -> Bool
isQuestion xs = T.last (strip xs) ==  '?'

isYelling :: Text -> Bool
isYelling xs = toUpper xs == xs && T.any isLetter xs

isSilence :: Text -> Bool
isSilence xs = strip xs == pack ""