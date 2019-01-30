{-# OPTIONS_GHC -Wall -fno-warn-tabs #-}

class Maturable a where
	grow :: a -> a
	mature :: a -> Bool

data Buri = Tsubasu | Hamachi | Mejiro | Buri deriving Show

instance Maturable Buri where
	grow Tsubasu = Hamachi
	grow Hamachi = Mejiro
	grow Mejiro = Buri
	grow Buri = Buri
	mature Buri = True
	mature _ = False

growing :: Maturable a => a -> [a]
growing x
	| mature x = [x]
	| otherwise = x : growing (grow x)

data Collatz = C Integer deriving Show

instance Maturable Collatz where
	grow (C n)
		| even n = C (n `div` 2)
		| otherwise = C (3 * n + 1)
	mature (C 1) = True
	mature _ = False
