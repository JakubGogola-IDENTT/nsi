function Is_Prime (N : in Positive) return Boolean
  with
    SPARK_Mode,
    Pre => N >= 2,
    Post => (if Is_Prime'Result then
               (for all I in 2 .. N - 1 => N rem I /= 0)
                   else
               (for some I in 2 .. N - 1 => N rem I = 0))
is
   Factor : Positive := 2;
   Has_Factor : Boolean := False;
begin
   while not Has_Factor and Factor < N loop
      pragma Loop_Invariant (Factor > 1);
      pragma Loop_Invariant (for all J in 2 .. Factor - 1 => N rem J /= 0);
      if N rem Factor = 0 then
         Has_Factor := True;
      else
         Factor := Factor + 1;
      end if;
   end loop;
   return not Has_Factor;
end Is_Prime;
