=== Definições Locais ===
where => Traz definições locais para uma equação [no escopo]
let => let definicao in expressao, define primeiro e fala que será
        usado em em uma outra expressao
        -- let x = 4 + 6 in x^2 + 2*x-4
diferenças => 
  - Com where, as definiões são colocadas no final, e com let
  elas são colocadas no inicio.
  - let é uma expressão e pode ser utilizada em qualquer lugar onde se espera uma
  expressao

Considere, que queiramos calcular a área de um triângulo de lados 
a, b e c, através da fórmula de Heron.
\begin{code}
areaHeron :: Float -> Float -> Float -> Float
areaHeron a b c = sqrt (s * (s - a) * (s - b) * (s - c))
  where
    s = (a + b + c) / 2

func :: Int -> Int
func y = 3 + outrafunc y + outrafunc a + outrafunc b
  where
    outrafunc x = x + 7 * c
    a = 3 * c
    b = outrafunc 2
    c = 10

segundograu :: Float -> Float -> Float -> Int
segundograu a b c 
  | delta > 0 = 2
  | delta == 0 = 1
  | otherwise = 0
  where
    delta = (b*b) - (4*a*c)

areacilindro :: Float -> Float -> Float
areacilindro r h = let arealado = 2 * pi * r * h
                      areabase = pi * r * r
                    in arealado + 2*areabase

areaHeronlet :: Float -> Float -> Float -> Float
areaHeron a b c = let s = (a + b + c) / 2
                  in sqrt (s * (s - a) * (s - b) * (s - c))
\end{code}