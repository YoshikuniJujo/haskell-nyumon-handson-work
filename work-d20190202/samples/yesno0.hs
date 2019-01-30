{-# OPTIONS_GHC -Wall -fno-warn-tabs #-}

main :: IO ()
main = do
	putStr "どうする?(Y/N): "
	a <- getLine
	putStrLn $ "Your answer is " ++ a ++ "."
