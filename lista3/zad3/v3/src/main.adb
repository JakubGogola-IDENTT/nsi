with Ada.Text_IO; use Ada.Text_IO;
with Bubble; use Bubble;

procedure Main is
   A : Arr(0 .. 9);

   procedure Print_Array (A: Arr)
   is
   begin
      Put("(");
      for I in A'Range loop
         if I /= A'Last then
            Put(A(I)'Image & ", ");
         else
            Put_Line(A(I)'Image & ")");
         end if;
      end loop;
   end Print_Array;
begin
   A := (8, 5, 3, 2, 18, 21, 44, 22, 37, 10);
   Print_Array (A);
   Sort (A);
   Print_Array (A);
end Main;
