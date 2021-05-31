Playlist: https://www.youtube.com/playlist?list=PLsri1g4fxrjskpZMS10kYJG0xWrYHZ911
=== Básico ===
  Haskell é proximo a maématica.
    => Lambda 
  Extensões: 
    .hs tudo é codigo menos o que está marcado como comentario (-- or {- -} )
    .lhs tudo é comentario menos o que está marcado como codigo \begin{code} \end{code}
  = (é), logo = não é atribuição como em C por exemplo, em Haskell não hia atribuições
  Fortemente tipada
  nomeFuncao :: Entrada -> Saída
  Tipos: Int, Integer, Float, Double, Boolean, Char, String
  Operadores Relacionais: > >= < <= == /=
  Operadores Aritméticos: + - * / ^ div mod
  div 11 5 = 2
  mod 11 5 = 1
  **Indentação é muito importante **

\begin{code}
polinomio :: Int -> Int
polinomio x = x * x + 10 * x + 2

quadrado :: Int -> Int
quadrado n = n * n

soma :: Float -> Float -> Float
soma a b = a + b

triplica :: Int -> Int
triplica var = var * 3

-- pi já exite no haskell
area :: Float -> Float
area raio = raio * raio * pi

-- sqrt - raiz quadrada no Haskell
hipotenusa :: Float -> Float -> Float
hipotenusa a b = sqrt (a * a + b * b)

-- abs - calcula o valor absoluta [sem sinal] no Haskell
diferenca :: Float -> Float -> Float
diferenca r1 r2 = abs((area r1) - (area r2))
\end{code}
