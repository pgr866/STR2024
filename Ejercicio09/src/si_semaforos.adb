with Putter;
with 
use Putter, semaphores;



procedure Si_Semaforos is

   task type Tarea_A (i : Integer);
   task type Tarea_B (i : Integer);
   task type Tarea_C (i : Integer);
   type Con_A is access Tarea_A;
   type Con_B is access Tarea_B;
   type Con_C is access Tarea_C;
   Sem : Semaphore;   
      
   task body Tarea_A is
   begin
      Putter.Put_Line("Contador Tarea A = " & Integer'Image(i));
   end Tarea_A;

   task body Tarea_B is
   begin
      Putter.Put_Line("Contador Tarea B = " & Integer'Image(i));
   end Tarea_B;

   task body Tarea_C is
   begin
      Putter.Put_Line("Contador Tarea C = " & Integer'Image(i));
   end Tarea_C;

   TA: Con_A;
   TB: Con_B;
   TC: Con_C;

begin
   for i in 1..5 loop
      TA := new Tarea_A(i);
      TB := new Tarea_B(i);
      TC := new Tarea_C(i);
   end loop;

end Si_Semaforos;
