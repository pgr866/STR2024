-- Programa principal para probar el paquete Numeros_Complejos

with Ada.Text_IO; use Ada.Text_IO;
with Numeros_Complejos; use Numeros_Complejos;

procedure main5_1 is
   A, B, Resultado: Complejo;
begin
   -- Definir dos números complejos
   A := (Real => 3.0, Imaginario => 2.0);
   B := (Real => 1.0, Imaginario => -1.0);

   -- Realizar operaciones con los números complejos
   Resultado := Suma(A, B);
   Put_Line("Suma: " & Float'Image(Resultado.Real) & " + " & Float'Image(Resultado.Imaginario) & "i");

   Resultado := Resta(A, B);
   Put_Line("Resta: " & Float'Image(Resultado.Real) & " + " & Float'Image(Resultado.Imaginario) & "i");

   Resultado := Producto(A, B);
   Put_Line("Producto: " & Float'Image(Resultado.Real) & " + " & Float'Image(Resultado.Imaginario) & "i");

   Resultado := Division(A, B);
   Put_Line("División: " & Float'Image(Resultado.Real) & " + " & Float'Image(Resultado.Imaginario) & "i");

   Resultado := Conjugado(A);
   Put_Line("Conjugado de A: " & Float'Image(Resultado.Real) & " + " & Float'Image(Resultado.Imaginario) & "i");
end main5_1;
