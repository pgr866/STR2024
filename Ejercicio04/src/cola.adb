package body cola is
   
   type Nodo;
   type Puntero_A_Nodo is access Nodo;
   
   type Nodo is record
      Dato: Elemento;
      Siguiente: Puntero_A_Nodo;
   end record;
   
   First, Last : Puntero_A_Nodo := Null;
   
   function Vacia return boolean is
   begin
      return First = Null;
   end Vacia;

   procedure Poner(E: Elemento) is
      Nuevo_Nodo: Puntero_A_Nodo := new Nodo'(Dato => E, Siguiente => null);
   begin
      if Vacia then
         First := Nuevo_Nodo;
      else
         Last.Siguiente := Nuevo_Nodo;
      end if;
      Last := Nuevo_Nodo;
   end Poner;

   function Quitar(E: in out Elemento) return Elemento is
      Nodo_A_Quitar: Puntero_A_Nodo;
   begin
      if Vacia then 
         return 0; -- La cola está vacía
      end if;
                     
      Nodo_A_Quitar := First;
      E := Nodo_A_Quitar.Dato;
      First := Nodo_A_Quitar.Siguiente;
      
      if First = Null then
         Last := Null;
      end if;
      
      return E; 
   end Quitar;

end cola;
