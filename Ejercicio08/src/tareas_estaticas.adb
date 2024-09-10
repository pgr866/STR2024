with Ada.Text_IO;
use Ada.Text_IO;

procedure Tareas_Estaticas is
   
   task type Tarea_A (i : Integer);
   task type Tarea_B (i : Integer);
   task type Tarea_C (i : Integer);
   
   task body Tarea_A is
   begin
      Put_Line("Contador Tarea A = " & Integer'Image(i));
   end Tarea_A;
   
   task body Tarea_B is
   begin
      Put_Line("Contador Tarea B = " & Integer'Image(i));
   end Tarea_B;
     
   task body Tarea_C is
   begin
      Put_Line("Contador Tarea C = " & Integer'Image(i));
   end Tarea_C;
    
   
begin
      for i in 1..5 loop
         declare
            A : Tarea_A(i);
            B : Tarea_B(i);
            C : Tarea_C(i);
         begin
            null;
         end;
      end loop;
      
end Tareas_Estaticas;
