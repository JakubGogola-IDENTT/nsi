package body Selection with SPARK_Mode is
   procedure Sort(A : in out Arr) is
      Min : Integer;
      Temp : Integer;
   begin
      for J in A'First .. A'Last - 1 loop
        
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
         pragma Loop_Invariant (for all K in A'First .. J =>
                                  (for all L in K + 1 .. A'Last => A(K) <= A(L)));
      end loop;
   end Sort;
end Selection;
