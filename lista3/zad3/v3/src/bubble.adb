package body Bubble with SPARK_Mode is
   procedure Sort (A : in out Arr)
   is
      Temp : Integer;
   begin
      Outer : for I in reverse A'First .. A'Last - 1 loop
         Inner : for J in A'First .. I loop
            if A(J) > A(J + 1) then
               Temp := A(J);
               A(J) := A(J + 1);
               A(J + 1) := Temp;
            end if;
            
            pragma Loop_Invariant (for all K in A'Range =>
                                     (for some L in A'Range =>
                                        A(L) = A'Loop_Entry(Inner) (K)));
         end loop Inner;
         pragma Loop_Invariant (for all K in A'Range =>
                                  (for some L in A'Range =>
                                     A(L) = A'Loop_Entry(Outer) (K)));
      end loop Outer;
   end Sort;
end Bubble;
