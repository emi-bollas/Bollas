---Práctica 1 (CORREGIDA)- Emiliano García Bollás 
----------------------------------------------------------
---1. Función para calcular la distancia entre dos puntos
distanciaPuntos :: (Float,Float) -> (Float,Float) -> (Float)
distanciaPuntos (x,y) (m,z) = sqrt(((x-m)^2) + ((y-z)^2))

---2. Función para calcular la hipotenusa de un triángulo rectángulo
hipotenusa :: Float -> Float -> Float
hipotenusa x y = 
  if x > y
  then sqrt((x^2)+(y^2))
  else 0

--3. Función para calcular la pendiente de una recta dados dos puntos por los que pasa
pendiente :: (Float, Float) -> (Float,Float) -> Float
pendiente (n,a) (t,o) = ((o-a)/(t-n))

--4. Función para calcular las raíces de una ecuación cuadrática
raices :: Float -> Float -> Float -> (Float , Float)
raices a b c = ((-b+sqrt(b^2-4*a*c))/2*a , (-b-sqrt(b^2-4*a*c))/2*a)

--5. Función para calcular el área de un triángulo con la fórmula de Herón
areaTriangulo :: Float -> Float -> Float -> Float
areaTriangulo a b c = sqrt(((a+b+c)/2)*(((a+b+c)/2)-a)*(((a+b+c)/2)-b)*(((a+b+c)/2)-c))

--6. Función que compara dos parámetros recibidos y devuelve distintos valores dependiendo de la relación que guardan entre sí.
comparador :: Int -> Int -> Int
comparador  x y = if x == y
  then 0
  else if x<y
  then -1
  else if x>y
  then 1
  else 0

--7. Función que devuelve el valor máximo de entre tres dados.
maximo :: Int -> Int -> Int -> Int
maximo n a t = if n > a && n > t
  then n
  else if n < a && a > t
          then a
               else if n < t && a < t
                       then t
                            else n

--8. Función que comprueba que el ingreso de cuatro datos sea descendente.
esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente n a t o = if n > a && a > t && t > o
  then True
  else False

