module Sixth (
  numUniques,
  wordNums,
  isIn,
  digitSum,
  firstTo40,
  findKey,
  findKey'
) where

import Data.List
import Data.Char

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

wordNums :: String -> [(String, Int)]
wordNums = map (\ws -> (head ws,  length ws)) . group . sort . words

isIn :: (Eq a) => [a] -> [a] -> Bool
needle `isIn` haystack = any ( needle `isPrefixOf`) (tails haystack)

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

firstTo40 :: Maybe Int
firstTo40 = find (\x -> digitSum x > 40) [1..]

findKey :: (Eq k ) => k -> [(k, v)] -> v
findKey key xs = snd . head . filter (\(k, _)-> key == k) $ xs

findKey' :: (Eq k ) => k -> [(k, v)] -> Maybe v
findKey' _  [] = Nothing
findKey' key ((k, v):xs)
  | key == k = Just v
  | otherwise = findKey' key xs




