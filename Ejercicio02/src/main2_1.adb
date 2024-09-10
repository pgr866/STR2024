with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;

procedure main2_1 is
   Input_String : Unbounded_String;

begin
   Put("Ingrese una cadena: ");
   Get_Line(Input_String);

   for I in 1 .. Length(Input_String) loop
      case Element(Input_String, I) is
         when 'A' | 'B' =>
            Put_Line("Opci�n 1");
         when 'C' | 'D' | 'E' =>
            Put_Line("Opci�n 2");
         when 'F' =>
            Put_Line("Opci�n 3");
         when others =>
            Put_Line("Otra opci�n");
      end case;
   end loop;
end main2_1;
