package cola is
   
   subtype Elemento is Integer range -1000 .. 1000;
   
   function Vacia return Boolean;
   procedure Poner(E: Elemento);
   function Quitar(E: in out Elemento) return Elemento;

end cola;
