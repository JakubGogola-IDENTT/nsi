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
            
            -- v1
            pragma Loop_Invariant (Bubbled (A(A'First .. J + 1)));
            pragma Loop_Invariant (for all K in J + 2 .. A'Last => 
                                     A(K) = A'Loop_Entry(Inner)(K));
            pragma Loop_Invariant (for all K in A'First .. J + 1 =>
                                     (for some L in A'First .. J + 1 =>
                                        A(K) = A'Loop_Entry(Inner) (L)));
            
            -- v2
            pragma Loop_Invariant (for all K in A'Range =>
                                     (for some L in A'Range =>
                                        A(K) = A'Loop_Entry(Inner) (L)));
            
            -- v3
            pragma Loop_Invariant (for all K in A'Range =>
                                     (for some L in A'Range =>
                                        A(L) = A'Loop_Entry(Inner) (K)));
            
         end loop Inner;    
         
         -- v1
         pragma Loop_Invariant (Bubbled (A(A'First .. I + 1)));
         pragma Loop_Invariant (Sorted (A(I + 1 .. A'Last)));
         
         -- v2
         pragma Loop_Invariant (for all K in A'Range =>
                                  (for some L in A'Range =>
                                     A(K) = A'Loop_Entry(Outer) (L)));
         
         -- v3
         pragma Loop_Invariant (for all K in A'Range =>
                                  (for some L in A'Range =>
                                     A(L) = A'Loop_Entry(Outer) (K)));
      end loop Outer;
   end Sort;
end Bubble;
