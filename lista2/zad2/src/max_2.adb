package body Max_2 with SPARK_Mode is
   function Find_Max_2 (V : Vector) return Integer is
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
      end loop;
      return Second_Max;
   end Find_Max_2;
end Max_2;
