-- Definici�n del paquete para n�meros complejos

package Numeros_Complejos is

   -- Definici�n del tipo de dato para n�meros complejos
   type Complejo is record
      Real, Imaginario: Float;
   end record;

   -- Funciones para realizar operaciones con n�meros complejos

   function Suma(Num1, Num2: Complejo) return Complejo;
   -- Realiza la suma de dos n�meros complejos

   function Resta(Num1, Num2: Complejo) return Complejo;
   -- Realiza la resta de dos n�meros complejos

   function Producto(Num1, Num2: Complejo) return Complejo;
   -- Realiza el producto de dos n�meros complejos

   function Division(Num1, Num2: Complejo) return Complejo;
   -- Realiza la divisi�n de dos n�meros complejos

   function Conjugado(Num: Complejo) return Complejo;
   -- Calcula el conjugado de un n�mero complejo

end Numeros_Complejos;
