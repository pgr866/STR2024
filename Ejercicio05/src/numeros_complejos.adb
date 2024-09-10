-- Implementación del paquete para números complejos

package body Numeros_Complejos is

   function Suma(Num1, Num2: Complejo) return Complejo is
   begin
      return (Real => Num1.Real + Num2.Real, Imaginario => Num1.Imaginario + Num2.Imaginario);
   end Suma;

   function Resta(Num1, Num2: Complejo) return Complejo is
   begin
      return (Real => Num1.Real - Num2.Real, Imaginario => Num1.Imaginario - Num2.Imaginario);
   end Resta;

   function Producto(Num1, Num2: Complejo) return Complejo is
   begin
      return (Real => Num1.Real * Num2.Real - Num1.Imaginario * Num2.Imaginario,
              Imaginario => Num1.Real * Num2.Imaginario + Num1.Imaginario * Num2.Real);
   end Producto;

   function Division(Num1, Num2: Complejo) return Complejo is
   begin
      return (Real => (Num1.Real * Num2.Real + Num1.Imaginario * Num2.Imaginario) / (Num2.Real ** 2 + Num2.Imaginario ** 2),
              Imaginario => (Num1.Imaginario * Num2.Real - Num1.Real * Num2.Imaginario) / (Num2.Real ** 2 + Num2.Imaginario ** 2));
   end Division;

   function Conjugado(Num: Complejo) return Complejo is
   begin
      return (Real => Num.Real, Imaginario => -Num.Imaginario);
   end Conjugado;

end Numeros_Complejos;
