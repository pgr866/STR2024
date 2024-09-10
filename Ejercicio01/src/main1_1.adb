with Ada.Text_IO; use Ada.Text_IO;

procedure main1_1 is

subtype tipoA is Integer range -120 .. 120;
subtype tipoB is Integer range 0 .. 50;
subtype tipoC is Integer range 0 .. 255;

   A: tipoA;
   B: tipoB;
   C: tipoC;
   sol1: Integer;
   sol2: Integer;
   sol3: Integer;

begin
  A := 8;
  B := 16;
  C := 32;

  sol1 := A+B;
  sol2 := A+C;
  sol3 := C+B;

   Put_Line("A + B =" & Integer'Image(sol1));
   Put_Line("A + C =" & Integer'Image(sol2));
   Put_Line("B + C =" & Integer'Image(sol3));
end main1_1;
