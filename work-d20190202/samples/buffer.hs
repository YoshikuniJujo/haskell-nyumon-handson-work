{-# OPTIONS_GHC -Wall -fno-warn-tabs #-}

import System.IO

main :: IO ()
main = do
	bi <- hGetBuffering stdin
	bo <- hGetBuffering stdout
	print bi
	print bo
