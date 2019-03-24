with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

with Selection;
use Selection;

procedure Main is
   A : Arr (0 .. 5);
begin
   A := (4, 2, 21, 17, 1, -19);

   Sort(A);

   for I in A'Range loop
      Put(A(I));
   end loop;
end Main;
