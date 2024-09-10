with Ada.Text_IO; use Ada.Text_IO;

procedure Main1_4 is
   type Vector1 is array (1 .. 150) of Float;
   type Matriz1 is array (0 .. 199, 0 .. 199, 0 .. 199) of Float;
   type Vector2 is array (Integer range <>) of Float;

   V1 : Vector1;
   M1 : Matriz1;
   V2 : Vector2(0..10);
begin
   V1 := (others => 0.0);
   M1 := (others => (others => (others => 0.0)));
   V2 := (others => 0.0);
   
   -- Imprimir elementos de V1
   Put_Line("Elementos de V1:");
   for I in V1'Range loop
      Put(Float'Image(V1(I)) & " ");
   end loop;
   New_Line;
   
   -- Imprimir elementos de M1
   Put_Line("Elementos de M1:");
   for I in M1'Range(1) loop
      for J in M1'Range(2) loop
         for K in M1'Range(3) loop
            Put(Float'Image(M1(I, J, K)) & " ");
         end loop;
      end loop;
   end loop;
   New_Line;
   
     -- Imprimir elementos de V2
   Put_Line("Elementos de V2:");
   for I in V2'Range loop
      Put(Float'Image(V2(I)) & " ");
   end loop;
   New_Line;
   
end Main1_4;
