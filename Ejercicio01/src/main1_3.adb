with Ada.Text_IO; use Ada.Text_IO;

procedure main1_3 is
   
   type TipoA is delta 0.01 range -50.00 .. 50.00;
   type TipoB is digits 3 range -200.0 .. 200.0;

   A: TipoA;
   B: TipoB;
   Sol1: Float;

begin
   A := 1.00;
   B := 2.00;

   -- Convertimos A y B a Float antes de realizar la suma
   Sol1 := Float(A) + Float(B);

   Put_Line("El resultado de la suma es: " & Float'Image(Sol1));
end main1_3;
