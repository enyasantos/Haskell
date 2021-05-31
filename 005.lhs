=== Listas ===
  - Análoga aos vetores
  - Há varias formar de manipular, ponto forte da linguagem
  - inteiros [Int]
  - listanum = [1, 2, 3, 4, 5]
  - listals = [[1,2],[3,4],[5,6]] [[Int]]
  - Lista preenchidas automaticamente
    - ls1 = [1...10]
    - ls2 = [1, 3 .. 10] Impares entre 1 e 10
    - ls3 = [10, 8 .. 0]
  - :
    - 8:[] -> [8]
    - 8:6:7[] -> [8,6,7]
    - <elemento(s) separados por :> : <lista>
    - acrescenta o elemento na primera posição da lista
  - ++
    - contatenar 
    - [1,2,3] ++ [4,5,6] -> [1, 2, 3, 4, 5, 6]
    - <lista> ++ <lista>
  - A lista e dividida entre cabeça(head) e calda(tail) **
    - [1, 2, 3, 4, 5, 6]
      - head = 1
      - tail = [2, 3, 4, 5, 6]
  - Algumas funções para listas
    - length -> Tamanho da lista
    - nail -> todos os elementos menos o último da lista

\begin{code}
comp :: [Int] -> Int
comp [] = 0
comp (h:t) = 1 + comp t --h -> cabeça t -> calda

somatorio :: [Int] -> Int
somatorio [] = 0
somatorio (h:t) = h + somatorio t

possuiChar :: [Char] -> Char -> Bool
possuiChar [] ch = False
possuiChar (h:t) ch 
  | h == ch = True
  | otherwise = possuiChar t ch

maiorEl :: [Int] -> Int
maiorEl [] = -1
maiorEl (h:t) = if h >= maiorcauda then h else maiorcauda
  where
    maiorcauda = maiorEl t

raizes :: Float -> Float -> Float -> [Float]
raizes a b c 
  | delta > 0 = []
  | delta == 0 = [(-b)/(2*a)]
  | otherwise = [((-b) + sqrt delta)/(2*a), ((-b) - sqrt delta)/(2*a)]
  where
    delta = (b*b) - (4*a*c)
\end{code}

=== Lista pro compreensão ===
  - Multiplica por dois todos os elementos da lista de numero pares de 0 ate 10
    [2*x | x <- [0 .. 10]] 
    [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
  - Lista infinita [0, 1 .. ]
  - Condições
    - numero de 1 até n que se dividir n por x o resto da 10
    - [x | x <- [1..n], mod n x == 0] 

\begin{code}
multiplo :: Int -> [Int]
multiplo n = [n*x | x <- [1 .. 10]]

ehprimo :: Int -> Bool
ehprimo n = if length [x | x <- [1 .. n], mod n x == 0] == 2 
            then True
            else False

quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (q:t) = quicksort [y | y <- t, y < q] --menores que pivô
                  ++ [q] -- o próprio pivô
                  ++ quicksort [y | y <- t, y >= q] -- maiores que pivô
\end{code}