package body Max_2 with SPARK_Mode is
   function Find_Max_2 (V : Vector) return Integer
   is
      Max : Integer := 0;
      Second_Max : Integer := 0;
   begin
      for I in V'Range loop
         if V(I) > Max then
            Second_Max := Max;
            Max := V(I);
         elsif V(I) > Second_Max and V(I) < Max then
            Second_Max := V(I);
         end if;
         pragma Loop_Invariant (for all J in V'First .. I => V(J) <= Max);
         pragma Loop_Invariant (for some J in V'First .. I => V(J) = Max);
         pragma Loop_Invariant (((for some J in V'First .. I => V(J) = Second_Max) and
                                  (for all J in V'First .. I => (if V(J) > Second_Max then
                                                                   (for all K in V'First .. I => V(K) <= V(J)))))
                                or
                                  (Second_Max = 0 and (for all J in V'First .. I => V(J) = Max)));
         pragma Loop_Invariant (if Second_Max /= 0 then
                                  (for some J in V'First .. I => V(J) > Second_Max));
      end loop;

      return Second_Max;
   end Find_Max_2;
end Max_2;
