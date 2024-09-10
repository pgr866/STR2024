package body Simulador is

   -- Implementación de funciones Ejercicio 1

   function calc_Tt (ST1, ST2 : Float) return Float is
      Tt : Float;
   begin
      Tt := (ST1 + ST2) / 2.0;
      return Tt;
   end calc_Tt;

   function calc_ST2 (SR1, ST4, ST1, SC1, Tt:Float) return Float is
      calc : Float;
   begin
      calc := ST1 + ((b*Leq*SR1*C)/(SC1*Cp*p)) - ((H*(Tt-ST4)*C)/(SC1*Cp*p));
      return calc;
   end calc_ST2;

   function calc_ST1 (ST2 : Float) return Float is
      ST1 : Float;
   begin
      ST1 := ST2 - 10.0;
      return ST1;
   end calc_ST1;

   function calc_SD1 (SC2, ST2, ST3 : Float) return Float is
      SD1 : Float;
   begin
      SD1 := 24.0*(0.135+0.003*ST2-0.0203*ST3-0.001*SC2+0.00004*ST2*SC2);
      return SD1;
   end calc_SD1;

   -- Implementación de funciones Ejercicio 2

   function calc_SC1(SR1, Tt, ST4, ST2, ST1:Float) return Float is
      SC1: Float;
   begin
      SC1 := (((b*Leq*SR1) - (H*(Tt - ST4)))*c) / (Cp*p*(ST2 - ST1));
      return SC1;
   end calc_SC1;

   function calc_SC2(SD1, ST2, ST3:Float) return Float is
      SC2: Float;
   begin
      SC2 := ((SD1/24.0) - 0.135 - 0.003*ST2 + 0.0203*ST3) / (0.00004*ST2 - 0.001);
      return SC2;
   end calc_SC2;

end Simulador;
