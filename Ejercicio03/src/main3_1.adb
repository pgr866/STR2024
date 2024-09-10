with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure main3_1 is
   Input_File : File_Type;
   Output_File : File_Type;
   type matriz is array(1..5, 1..10) of Integer;
   type matriz_transpuesta is array(1..10, 1..5) of Integer;
   m : matriz;
   mt : matriz_transpuesta;

begin
-- Carga el archivo de entrada
Open(Input_File, In_File, "input.txt");

-- Lee la matriz entrada
for i in 1..5 loop
    for j in 1..10 loop
        Get(Input_File, m(i,j));
    end loop;
end loop;
Close(Input_File);

-- Calcula la matriz transpuesta
for i in 1..10 loop
    for j in 1..5 loop
        mt(i,j) := m(j,i);
    end loop;
end loop;

-- Abrir el archivo de salida
Open(Output_File, Out_File,"output.txt");

-- Escribir la matríz transpuesta en el archivo salida
for i in 1..10 loop
    for j in 1..5 loop
        Put(Output_File,mt(i,j),Width => 1);
        Put(Output_File," ");
    end loop;
    New_Line(Output_File);
end Loop;

Close(Output_File);
end main3_1;
