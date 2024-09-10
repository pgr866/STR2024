with Ada.Text_IO; use Ada.Text_IO;

procedure main1_6 is
   
   subtype tipoDia is Integer range 1..31;
   subtype tipoMes is Integer range 1..12;
   subtype tipoAno is Integer range 1900..2024;

   type Fecha is record
      dia: tipoDia;
      Mes: tipoMes;
      Ano: tipoAno;
    end record;
 
   type Datos_Personales is record
      Nombre : String(1..4);
      Apellidos : String(1..11);
      date: Fecha;
   end record;

   -- Declaración de una variable de tipo Persona
   P1 : Datos_Personales;

begin
   -- Inicialización de los campos del registro
P1 := (Nombre => "Pepe", Apellidos => "Lopez Lopez", date => (Dia => 1, Mes => 1, Ano => 2001));


   -- Acceso a los campos del registro
   Put_Line("Nombre: " & P1.Nombre);
   Put_Line("Edad: " & P1.Apellidos);
   Put_Line("Fecha de nacimiento: " & Integer'Image(P1.Date.Dia) & "/" & Integer'Image(P1.Date.Mes) & "/" & Integer'Image(P1.Date.Ano));

end main1_6;
