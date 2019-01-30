{-# OPTIONS_GHC -Wall -fno-warn-tabs #-}

total :: Integer -> IO Integer
total s = do
	ln <- getLine
	let	n = read ln
	if n < 0
		then return s
		else total (s + n)

main :: IO ()
main = do
	s <- total 0
	print s
