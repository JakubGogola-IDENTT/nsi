package body Selection with SPARK_Mode is
   procedure Sort(A : in out Arr) is
      Min : Integer;
      Temp : Integer;
   begin
      for J in A'First .. A'Last - 1 loop
         pragma Loop_Invariant (for all K in J .. A'Last - 1 => 
                                  (for all L in A'First .. J - 1 => A(L) <= A(K)));

         Min := J;
         
         for I in J .. A'Last loop
            pragma Loop_Invariant (for all K in J .. I - 1 => A(Min) <= A(K));
            pragma Loop_Invariant (Min in J .. A'Last);
            
            if A(I) < A(Min) then
               Min := I;
            end if;
         end loop;
           
         if Min /= J then
            Temp := A(Min);
            A(Min) := A(J);
            A(J) := Temp;
         end if;
      end loop;
   end Sort;
end Selection;
