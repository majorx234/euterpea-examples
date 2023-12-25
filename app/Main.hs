module Main (main) where
import Euterpea

hNote :: Dur -> Pitch -> Int -> Music Pitch
hNote d p h = note d p :=: note d (trans (-h) p)

mel :: Music Pitch
mel =  hNote qn (F,4) 3 :+: hNote qn (A,4) 4 :+: hNote qn (F,4) 3

main :: IO()
main = do
    play mel
