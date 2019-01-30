{-# OPTIONS_GHC -Wall -fno-warn-tabs #-}

import System.IO

main :: IO ()
main = do
	putStr "どうする?(Y/N): "
	hFlush stdout
	a <- getLine
	putStrLn $ "Your answer is " ++ a ++ "."
