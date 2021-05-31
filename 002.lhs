=== Condicionais ===
if <condicao> then <execucao> else <execucao>
é obrigatorio ter o else

\begin{code} 
maior :: Int -> Int -> Int
maior a b = if a >= b 
  then a
  else b
\end{code}

=== Guardas ===
  Similar so switch-case do c++/c
  otherwise (" de outra maneira ") similar ao default do switch-case
  com guarda após a função não tem o =

\begin{code} 
fatorial :: Int -> Int
fatorial n 
  | n == 0 = 1
  | n > 0 = n * fatorial(n - 1)

maiorG :: Int -> Int
maiorG a b 
  | a > b = a
  | a < b = b
  | otherwise -1

ehPar :: Int -> Bool
ehPar x = mod x 2 == 0 then True else False

charcase Char -> String
charcase ch | ch >= 'a' && ch <= 'z' = "Minusculo"
            | ch >= 'A' && ch <= 'Z' = "Maiusculo"
            | otherwise = "Desconhecido"

func :: Int -> Int -> Int -> Int
func a b c 
  | a == 0 = (b^2 + 3*c)         
  | a == 1 = (2*c^2 - 3*c)
  | a == 1 = (3*c - b^2)
  | otherwise = 0
\end{code}