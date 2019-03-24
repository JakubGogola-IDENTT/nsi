package body Poly with SPARK_Mode is
   function Horner (X : Integer; A : Vector) return Integer is
      Result : Integer := 0;
      Definition : Integer := 0 with Ghost;
   begin
      for I in reverse A'Range loop
         Definition := Definition + A(I) * (X ** (I - A'First));
         Result := Result * X + A(I);
         
         pragma Loop_Invariant (Definition = (X ** (I - A'First)) * Result);
         pragma Loop_Invariant (I in A'Range);
      end loop;
      
      pragma Assert (Result = Definition);
      
      return Result;
   end Horner;
end Poly;
