with Ada.Text_IO; use Ada.Text_IO;

procedure main1_2 is
   type Semaforo is (Rojo, Amarillo, Verde);
   Sem : Semaforo;
begin
   -- Asignando un valor a Sem
   Sem := Semaforo'Val(0);
   Put_Line("Valor de Sem después de asignar 0: " & Semaforo'Image(Sem));

   Sem := Semaforo'Val(1);
   Put_Line("Valor de Sem después de asignar 1: " & Semaforo'Image(Sem));

   Sem := Semaforo'Val(2);
   Put_Line("Valor de Sem después de asignar 2: " & Semaforo'Image(Sem));
end main1_2;
