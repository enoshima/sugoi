module SugoiH
(
  factorial,
  head',
  firstLetter,
  bmiTell,
  cylinder,
  head'2
) where

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

head' :: [a] -> a
head' [] = error "nanimo nai yo"
head' (x:_) = x

firstLetter :: String -> String
firstLetter "" = "Empty"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]


bmiTell :: Double -> Double -> String
bmiTell weight height
  | bmi <= aaa = "UnderWeight"
  | otherwise = "whale"
  where bmi = weight / height ^ 2
        aaa = 18.5

cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in  sideArea + 2 * topArea

head'2 :: [a] -> a
head'2 xs = case xs of [] -> error "kara dayo"
                       (x:_) -> x



