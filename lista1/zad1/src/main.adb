with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

with Smallest_Factor;

procedure Main is
   N : Positive;
   Factor : Positive;
begin
   N := 121;
   Smallest_Factor(N, Factor);
   Put(Factor);
end Main;
