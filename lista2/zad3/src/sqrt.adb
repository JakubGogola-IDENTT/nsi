function Sqrt (X : Float; Tolerance : Float) return Float
  with
    SPARK_Mode,
    Pre => X >= 0.0 and X <= 1.8E19 and
  Tolerance > Float'Model_Epsilon and Tolerance <= 1.0,
  Post => abs (X - Sqrt'Result ** 2) <= X * Tolerance
is
   A : Float := 1.0;
   B : Float := X;
begin
   while abs (X - A ** 2) > X * Tolerance loop
      A := (A + B) / 2.0;
      if A >= Float'Model_Epsilon then
         B := X / A;
      end if;
   end loop;
   return A;
end;
