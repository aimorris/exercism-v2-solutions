module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify x
  | x < 1 = Nothing
  | classification > x = Just Abundant
  | classification < x = Just Deficient
  | otherwise = Just Perfect
  where classification = sum (factorsOf x)

isFactorOf :: Int -> Int -> Bool
isFactorOf factor num = num `rem` factor == 0

factorsOf :: Int -> [Int]
factorsOf x = filter (`isFactorOf` x) [1..x-1]
