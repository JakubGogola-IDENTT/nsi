with Ada.Text_IO; use Ada.Text_IO;
with Mult;

procedure Main is
   A : Natural;
   B : Natural;
   Result : Natural;
begin
   A := 7;
   B := 8;
   Result := Mult (A, B);
   Put_Line (A'Image & " * " & B'Image & " = " & Result'Image);
end Main;
