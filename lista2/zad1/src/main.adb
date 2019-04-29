with Ada.Text_IO; use Ada.Text_IO;
with Is_Prime;

procedure Main is
   N : Positive;
   Result : Boolean;
begin
   N := 10;
   Result := Is_Prime(N);
   Put_Line ("Is " & N'Image & " prime? : " & Result'Image);
end Main;
