module Lab2
    -- Task 1
    Xor : Bool -> Bool-> Bool
    Xor True False = True
    Xor False True = True
    Xor _ _ = False

    --Task 2
    data  Prob : Type  where
        Definitely :  Prob
        Likely :  Prob
        Doubtful :  Prob
        Impossible :  Prob

    --Task 3
    not_Prob: Prob -> Prob
    not_Prob Definitely = Impossible
    not_Prob Likely = Doubtful
    not_Prob Doubtful = Likely
    not_Prob Impossible = Definitely

    --Task 4
    and  :  Prob -> Prob -> Prob
    and Impossible _  =  Impossible
    and _ Impossible  =  Impossible
    and Doubtful _  =  Doubtful
    and _ Doubtful  =  Doubtful
    and Likely _  =  Likely
    and _ Likely  =  Likely
    and Definitely _  =  Definitely
    and _ Definitely  =  Definitely

    --Task 5
    mul  :  Nat -> Nat -> Nat
    mul Z n  =  Z
    mul (S m) n  =  plus n (mul m n)


    -- Task 6
    factorial : Nat -> Nat
    factorial Z = 1
    factorial (S n)  =  (S n) * (factorial ( n ))

    -- Task 7

    data Shape : Type where
        -- circle shape with given radius:
        Circle : (radius : Double) -> Shape
        -- rectangle shape with given width and height:
        Rectangle : (width : Double) -> (height : Double) -> Shape
        -- isosceles triangle shape with given base and height:
        IsosTriangle : (base : Double) -> (height : Double) -> Shape
    
    area : Shape -> Double
    area (Circle r) = pi * r * r
    area (Rectangle w h) = w * h
    area (IsosTriangle b h) = 0.5 * b * h
 

