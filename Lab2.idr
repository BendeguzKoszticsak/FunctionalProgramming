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

    --Task 6
    factorial : Nat -> Nat
    factorial 0 = 1
    factorial (S m) = (S m) * (factorial (n-1))

