-- Definición del paquete para números complejos

package Numeros_Complejos is

   -- Definición del tipo de dato para números complejos
   type Complejo is record
      Real, Imaginario: Float;
   end record;

   -- Funciones para realizar operaciones con números complejos

   function Suma(Num1, Num2: Complejo) return Complejo;
   -- Realiza la suma de dos números complejos

   function Resta(Num1, Num2: Complejo) return Complejo;
   -- Realiza la resta de dos números complejos

   function Producto(Num1, Num2: Complejo) return Complejo;
   -- Realiza el producto de dos números complejos

   function Division(Num1, Num2: Complejo) return Complejo;
   -- Realiza la división de dos números complejos

   function Conjugado(Num: Complejo) return Complejo;
   -- Calcula el conjugado de un número complejo

end Numeros_Complejos;
