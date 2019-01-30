data Figure = Circle Double | Rectangle Double Double deriving Show

area :: Figure -> Double
area (Circle r) = r * r * pi
area (Rectangle w h) = w * h
