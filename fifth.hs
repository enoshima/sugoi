module Fifth (
applyTwice,
zipWith',
flip',
largestDivisible,
sum',
reverse'
) where

applyTwice :: (a ->a) -> a -> a
applyTwice f x = f (f x)


zipWith' :: (a->b->c)->[a]->[b]->[c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a->b->c)->(b->a->c)
flip' f = g
  where g x y = f y x


largestDivisible :: Integer
largestDivisible = head (filter p [100000, 9999..])
  where p x = x `mod` 3829 == 0

sum' :: (Num a) => [a] -> a
sum'  = sum

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []


--oddSquareSum :: Integer
--oddSquareSum = sum ( takeWhile (< 10000) (

