=== Recursão ===
  - Sempre tem que ter um caso base forte e um caso recursivo que
  vá em direção a esse caso base para que tenha fim.
  - Em Haskell não é possível controlar o estado do programa ou variáveis
  de controle, não existe estruturas de repetição.

\begin{code}
fatorial :: Integer -> Integer
fatorial n
  | n == 0 = 1
  | n > 0 = n * fatorial (n - 1)

resto :: Int -> Int -> Int
resto a b 
  | a < b = a
  | a == b = 0
  | otherwise = resto (a - b) b

somasucessiva :: Int -> Int -> Int
somasucessiva x n 
  | n == 0 = 0
  | n == 1 = x
  | otherwise = x + somasucessiva x (n - 1)

mdc :: Int -> Int -> Int
mdc x y
  | x == y = x
  | x > y = mdc (x-y) y
  | otherwise = mdc y x
\end{code}

=== Recursão em Cauda ===
  - Um tipo especial de recursão, onde o resultado de chamada recursiva não 
  precisa ser processado de maneira alguma para produzir o resultado final.
  - Otimiza chamadas com recursão e cauda
  - Não faz a volta para retornar os resultados

\begin{code}
-- chamada: potencia2 10
potencia2 :: Int -> Int
potencia2 n
  | n == 0 = 1
  | n > 0 = 2 * potencia2 (n - 1)

-- chamada: potencia2cauda 10 1
potencia2cauda :: Int -> Int -> Int
potencia2cauda n acumulado
  | n == 0 = acumulado
  | n > 0 = potencia2cauda (n - 1) (2 * acumulado)

fatorialcauda :: Integer -> Integer -> Integer
fatorialcauda n cc
  | n == 0 = cc
  | n > 0 = fatorialcauda (n - 1) (n * cc)

-- chamada: fibcauda 10 1 1
-- fibcauda :: Int -> Int -> Int -> Int
-- fibcauda 1 acc1 acc1
--   | 1 == 0 = acc1
--   | 1 == 1 = acc2
--   | n > 1 = fibcauda (n - 1) acc2 (acc1+acc2)

fibcauda :: Int -> Int
fibcauda n = fib' n 0 1
  where
    fib' n a1 a2
      | n <= 1 = a2
      | n > 1 = fib' (n - 1) a2 (a1+a2)
  
\end{code}