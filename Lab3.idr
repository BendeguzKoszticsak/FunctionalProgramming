module Lab3
    -- Task 1
    swap_pair : Pair a b -> Pair b a
    swap_pair (x,  y) = (y, x)

    -- Task 2
    swap_either : Either a b -> Either b a
    swap_either (Left x) = Right x
    swap_either (Right y) = Left y

    -- Task 3
    reverse_list : List a -> List a
    reverse_list [] = []
    reverse_list (x :: xs) = reverse_list xs ++ [x]

    -- Task 4
    data Tree : (a : Type) -> Type where
        -- a tree is either empty:
        Leaf : Tree a
        -- or it is a left subtree, a current element, and a right subtree:
        Node : (l : Tree a) -> (x : a) -> (r : Tree a) -> Tree a

    t1 : Tree Nat
    t1 = Node (Node Leaf 1 (Node Leaf 3 Leaf)) 5 Leaf
    
    t2 : Tree Nat
    t2 = Node (Node (Node Leaf 1 Leaf) 2 (Node Leaf 3 Leaf)) 4 (Node (Node Leaf 5 Leaf) 6 (Node Leaf 7 Leaf))   
    
    -- Task 5
    size : Tree a -> Nat
    size Leaf = 0
    size (Node s x r) = 1 + size s + size r

    -- Task 6
    n_to_lu : Nat -> List Unit
    n_to_lu Z = []
    n_to_lu (S n) = () :: n_to_lu n

    lu_to_n : List Unit -> Nat
    lu_to_n [] = Z
    lu_to_n (_ :: xs) = S (lu_to_n xs)

  


    