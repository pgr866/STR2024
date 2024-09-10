with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Simulador;           use Simulador;

procedure Main is

   -- Vectores de los valores de los sensores
   ST3, ST4, SC1, SC2, SR1, SD1, Tt : Vector(1..15);
   -- ST1 y ST2 deben aportar un valor inicial [0]
   ST1, ST2                         : Vector(0..15);

   -- Valor óptimo ST2 (Primer proceso de control)
   ST2_Opt : Float := 82.0;
   -- Valor óptimo SD1 (Segundo proceso de control)
   SD1_Opt : Float := 25.0;

   -- Variable de archivo de entrada (input.txt)
   input : File_Type;
   -- Variable de archivo de salida del Ejercicio 1 (data.txt)
   data : File_Type;
   -- Variable de archivo de salida del Ejercicio 2 (data2.txt)
   data2 : File_Type;
   -- Variable de archivo de alarma del Ejercicio 1(alarm_log.txt)
   alarm : File_Type;
   -- Variable de archivo de alarma del Ejercicio 2 (alarm_log2.txt)
   alarm2 : File_Type;

   -- Índice iterador para el bucle
   k : Integer;

begin

   -- Valores iniciales
   ST1(0) := 50.0;
   ST2(0) := 60.0;

   -- Ejercicio 1
   Put_Line("Ejercicio 1:");
   Put_Line("");

   -- Valores fijos
   SC1 := (others => 15.0);
   SC2 := (others => 450.0);

   -- Abrir input.txt (entrada)
   Open(input, In_File, "input.txt");
   -- Crear data.txt (salida Ejercicio 1)
   Create(data, Out_File, "data.txt");
   -- Crear alarm_log.txt (alarmas Ejercicio 1)
   Create(alarm, Out_File, "alarm_log.txt");

   -- Escribir cabecera de los datos en archivo data.txt (salida)
   Put_Line(data,
            " k" & ASCII.HT &
            " ST1(k)" & ASCII.HT & ASCII.HT &
            " ST2(k)" & ASCII.HT & ASCII.HT &
            " ST3(k)" & ASCII.HT & ASCII.HT &
            " ST4(k)" & ASCII.HT & ASCII.HT &
            " SC1(k)" & ASCII.HT & ASCII.HT &
            " SC2(k)" & ASCII.HT & ASCII.HT &
            " SR1(k)" & ASCII.HT & ASCII.HT &
            " SD1(k)");

   -- Escribir cabecera de los datos por pantalla
   Put_Line(" k" & ASCII.HT &
            " ST1(k)" & ASCII.HT & ASCII.HT &
            " ST2(k)" & ASCII.HT & ASCII.HT &
            " ST3(k)" & ASCII.HT & ASCII.HT &
            " ST4(k)" & ASCII.HT & ASCII.HT &
            " SC1(k)" & ASCII.HT & ASCII.HT &
            " SC2(k)" & ASCII.HT & ASCII.HT &
            " SR1(k)" & ASCII.HT & ASCII.HT &
            " SD1(k)");

   -- Bucle for que itera las 15 filas de input.txt (entrada)
   for i in 1 .. 15 loop
      -- Cargar valores de entrada
      Get(input, k);
      Get(input, SR1(k));
      Get(input, ST4(k));
      Get(input, ST3(k));

      -- Realizar cálculos necesarios
      Tt(k) := calc_Tt(ST1(k-1), ST2(k-1));
      ST2(k) := calc_ST2(SR1(k), ST4(k), ST1(k-1), SC1(k), Tt(k));
      ST1(k) := calc_ST1(ST2(k));
      SD1(k) := calc_SD1(SC2(k), ST2(k-1), ST3(k));

      -- Restricción de seguridad en ST2
      if (ST2(k) > 98.0) then
         -- Escribir restricción de seguridad en archivo alarm_log.txt
         Put_Line(alarm, "k =" & k'Img & ASCII.HT & "Alarma: ST2 tiene una temperatura > 98 ºC: " & ST2(k)'Img & "ºC");
         -- Escribir restricción de seguridad por pantalla
         Put_Line("k =" & k'Img & ASCII.HT & "Alarma: ST2 tiene una temperatura > 98 ºC: " & ST2(k)'Img & "ºC");
      end if;

      -- Escribir todos los valores actuales en data.txt (salida)
      Put_Line(data,
               k'Img      & ASCII.HT &
               ST1(k)'Img & ASCII.HT &
               ST2(k)'Img & ASCII.HT &
               ST3(k)'Img & ASCII.HT &
               ST4(k)'Img & ASCII.HT &
               SC1(k)'Img & ASCII.HT &
               SC2(k)'Img & ASCII.HT &
               SR1(k)'Img & ASCII.HT &
               SD1(k)'Img);

      -- Escribir todos los valores actuales por pantalla
      Put_Line(k'Img      & ASCII.HT &
               ST1(k)'Img & ASCII.HT &
               ST2(k)'Img & ASCII.HT &
               ST3(k)'Img & ASCII.HT &
               ST4(k)'Img & ASCII.HT &
               SC1(k)'Img & ASCII.HT &
               SC2(k)'Img & ASCII.HT &
               SR1(k)'Img & ASCII.HT &
               SD1(k)'Img);

   end loop;

   -- Cerrar archivos de texto utilizados
   Close(input);
   Close(data);
   Close(alarm);



   -- Ejercicio 2
   Put_Line("");
   Put_Line("Ejercicio 2:");
   Put_Line("");

   -- Abrir input.txt (entrada)
   Open(input, In_File, "input.txt");
   -- Crear data2.txt (salida Ejercicio 2)
   Create(data2, Out_File, "data2.txt");
   -- Crear alarm_log2.txt (alarmas Ejercicio 2)
   Create(alarm2, Out_File, "alarm_log2.txt");

   -- Escribir cabecera de los datos en archivo data2.txt (salida)
   Put_Line(data2,
            " k" & ASCII.HT &
            " ST1(k)" & ASCII.HT & ASCII.HT &
            " ST2(k)" & ASCII.HT & ASCII.HT &
            " ST3(k)" & ASCII.HT & ASCII.HT &
            " ST4(k)" & ASCII.HT & ASCII.HT &
            " SC1(k)" & ASCII.HT & ASCII.HT &
            " SC2(k)" & ASCII.HT & ASCII.HT &
            " SR1(k)" & ASCII.HT & ASCII.HT &
            " SD1(k)");

   -- Escribir cabecera de los datos por pantalla
   Put_Line(" k" & ASCII.HT &
            " ST1(k)" & ASCII.HT & ASCII.HT &
            " ST2(k)" & ASCII.HT & ASCII.HT &
            " ST3(k)" & ASCII.HT & ASCII.HT &
            " ST4(k)" & ASCII.HT & ASCII.HT &
            " SC1(k)" & ASCII.HT & ASCII.HT &
            " SC2(k)" & ASCII.HT & ASCII.HT &
            " SR1(k)" & ASCII.HT & ASCII.HT &
            " SD1(k)");

   -- Bucle for que itera las 15 filas de input.txt (entrada)
   for i in 1 .. 15 loop
      -- Cargar valores de entrada
      Get(input, k);
      Get(input, SR1(k));
      Get(input, ST4(k));
      Get(input, ST3(k));

      -- Realizar cálculos necesarios
      Tt(k) := calc_Tt(ST1(k-1), ST2(k-1));
      SC1(k) := calc_SC1(SR1(k), Tt(k), ST4(k), ST2_Opt, ST1(k-1));
      SC2(k) := calc_SC2(SD1_Opt, ST2(k-1), ST3(k));
      ST2(k) := calc_ST2(SR1(k), ST4(k), ST1(k-1), SC1(k), Tt(k));
      ST1(k) := calc_ST1(ST2(k));
      SD1(k) := calc_SD1(SC2(k), ST2(k-1), ST3(k));

      -- Control de rangos seguros
      if(SC1(k) < 7.5) then
         SC1(k) := 7.5;
      elsif(SC1(k) > 30.0) then
         SC1(k) := 30.0;
      end if;
      if(SC2(k) < 400.0) then
         SC2(k) := 400.0;
      elsif(SC2(k) > 600.0) then
         SC2(k) := 600.0;
      end if;

      -- Restricción de seguridad en ST2
      if (ST2(k) > 98.0) then
         -- Escribir restricción de seguridad en archivo alarm_log.txt
         Put_Line(alarm2, "k =" & k'Img & ASCII.HT & "Alarma: ST2 tiene una temperatura > 98 ºC: " & ST2(k)'Img & "ºC");
         -- Escribir restricción de seguridad por pantalla
         Put_Line("k =" & k'Img & ASCII.HT & "Alarma: ST2 tiene una temperatura > 98 ºC: " & ST2(k)'Img & "ºC");
      end if;

      -- Escribir todos los valores actuales en data.txt (salida)
      Put_Line(data2,
               k'Img      & ASCII.HT &
               ST1(k)'Img & ASCII.HT &
               ST2(k)'Img & ASCII.HT &
               ST3(k)'Img & ASCII.HT &
               ST4(k)'Img & ASCII.HT &
               SC1(k)'Img & ASCII.HT &
               SC2(k)'Img & ASCII.HT &
               SR1(k)'Img & ASCII.HT &
               SD1(k)'Img);

      -- Escribir todos los valores actuales por pantalla
      Put_Line(k'Img      & ASCII.HT &
               ST1(k)'Img & ASCII.HT &
               ST2(k)'Img & ASCII.HT &
               ST3(k)'Img & ASCII.HT &
               ST4(k)'Img & ASCII.HT &
               SC1(k)'Img & ASCII.HT &
               SC2(k)'Img & ASCII.HT &
               SR1(k)'Img & ASCII.HT &
               SD1(k)'Img);

   end loop;

   -- Cerrar archivos de texto utilizados
   Close(input);
   Close(data2);
   Close(alarm2);

end Main;
