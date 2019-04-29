with Ada.Text_IO; use Ada.Text_IO;
with Sqrt;

procedure Main is
   X : Float;
   Tolerance : Float;
   Result : Float;
begin
   X := 9.0;
   Tolerance := 0.001;
   Result := Sqrt (X, Tolerance);

   Put_Line(Result'Image);
end Main;
