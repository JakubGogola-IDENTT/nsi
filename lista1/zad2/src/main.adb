with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

with Poly;
use Poly;

procedure Main is
   X : Integer;
   A : Vector (0 .. 2);
begin
   X := 2;
   A := (5, 10, 15);

   Put(Horner(X, A));
end Main;
