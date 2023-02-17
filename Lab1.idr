module Lab1
    small : Integer
    small = 4

    large : Integer
    large = small * 6

    medium : Integer

    average : Integer -> Integer -> Integer
    average i j = div (i + j) 2 

    medium = average small large

    average’: Double -> Double -> Double
    average’ i j =  (i+j) / 2
