with Ada.Text_IO; use Ada.Text_IO;
with Rev;

procedure Main is
   S : String := "Niezawodne Systemy Informatyczne";
begin
   Put_Line (S);
   Rev (S);
   Put_Line (S);
end Main;
