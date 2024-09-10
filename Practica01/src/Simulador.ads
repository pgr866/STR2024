package Simulador is

   -- Tipo Vector de Float
   type Vector is Array (Integer range <>) of Float;

   -- Constantes
   b: constant float := 0.15;
   Leq: constant float := 15.0;
   H: constant float := 4.0;
   c: constant float := 9.0*2.0*6.0*10000.0;
   Cp: constant float := 4190.0;
   p: constant float := 975.0;

   -- Declaración de funciones Ejercicio 1
   function calc_Tt (ST1, ST2:Float) return Float;
   function calc_ST2 (SR1, ST4, ST1, SC1, Tt:Float) return Float;
   function calc_ST1 (ST2:Float) return Float;
   function calc_SD1 (SC2, ST2, ST3:Float) return Float;

   -- Declaración de funciones Ejercicio 1
   function calc_SC1 (SR1, Tt, ST4, ST2, ST1:Float) return Float;
   function calc_SC2 (SD1, ST2, ST3:Float) return Float;

end Simulador;
