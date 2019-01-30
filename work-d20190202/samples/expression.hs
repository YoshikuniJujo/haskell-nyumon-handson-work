{-# OPTIONS_GHC -Wall -fno-warn-tabs #-}

data Expr
	= Integer :+ Integer
	| Integer :- Integer
	| Integer :* Integer
	deriving Show
