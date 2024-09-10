with ADA.Text_IO;
use ADA.Text_IO;

procedure Secuencial is

   procedure Tarea_A (i : Integer) is
   begin
      Put_Line("Contador Tarea A = " & i'img);
   end Tarea_A;

   procedure Tarea_B (i : Integer) is
   begin
      Put_Line("Contador Tarea B = " & i'img);
   end Tarea_B;

   procedure Tarea_C (i : Integer) is
   begin
      Put_Line("Contador Tarea C = " & i'img);
   end Tarea_C;


begin
   for i in 1..5 loop
      Tarea_A(i);
      Tarea_B(i);
      Tarea_C(i);
   end loop;

end Secuencial;
