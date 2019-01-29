{-# OPTIONS_GHC -Wall -fno-warn-tabs #-}

div2 :: Integer -> Integer
div2 n	| even n = n `div` 2
	| otherwise = n
