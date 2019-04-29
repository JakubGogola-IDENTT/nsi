with Ada.Text_IO; use Ada.Text_IO;
with Max_2; use Max_2;

procedure Main is
   V : Vector (0 .. 9);
   Result : Integer;
begin
   V := (9, 3, 6, 12, 23, 4, 78, 43, 65, 10);
   Result := Find_Max_2 (V);
   Put_Line ("Second max in array is " & Result'Image);

   -- Array with equal values
   V := (1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
   Result := Find_Max_2 (V);
   Put_Line ("Second max in array is " & Result'Image);
end Main;
