package body Poly with SPARK_Mode is
   function Horner (X : Integer; A : Vector) return Integer is
      Result : Integer;
   begin
      Result := A(A'First);
      
      for I in A'First + 1 .. A'Last loop
         -- pragma Loop_Invariant();
         Result := Result * X + A(I);
      end loop;
      
      return Result;
   end Horner;
end Poly;
