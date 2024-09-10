with Ada.Text_IO; use Ada.Text_IO;
with cola; use cola;

procedure main4_1 is
   -- Variables auxiliares
   Dato: Elemento;
begin
   -- Crear una cola
   if Vacia then
      Put_Line("La cola está vacía.");
   end if;

   -- Insertar datos en la cola
   Poner(1);
   Poner(2);
   Poner(3);
   Poner(4);
   Poner(5);
   Poner(6);
   Poner(7);

   -- Eliminar y mostrar los datos de la cola uno a uno
   Put_Line("Datos en la cola:");
   loop
      exit when Quitar(Dato) = 0; -- Salir si la cola está vacía
      Put(Integer'Image(Dato));
   end loop;
end main4_1;
