productN :: Integer -> Integer
productN n | n < 0 = error "negative argument"
productN 0 = 1
productN n = n * productN (n - 1)
