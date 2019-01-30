{-# OPTIONS_GHC -Wall -fno-warn-tabs #-}

class BoolLike b where
	toBool :: b -> Bool

instance BoolLike Integer where
	toBool 0 = False
	toBool _ = True

instance BoolLike Char where
	toBool '\NUL' = False
	toBool _ = True

myIf :: BoolLike b => b -> a -> a -> a
myIf b t e = if toBool b then t else e
