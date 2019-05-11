with Ada.Text_IO; use Ada.Text_IO;
with Railway; use Railway;

procedure Main is
   Success : Boolean;
begin
   Put_Line ("#################################");
   Put_Line ("[---->||     |     |     ||     ]");
   Open_Route (Route_Enter_Left, Success);
   Put_Line ("Open route result: " & Success'Image);
   Move_Train (Route_Enter_Left, Success);
   Put_Line ("Move train result: " & Success'Image);
   Put_Line ("[     ||---->|     |     ||     ]");
   Put_Line ("#################################");

   Put_Line ("#################################");
   Put_Line ("[     ||---->|     |     ||     ]");
   Open_Route (Route_Left_Middle, Success);
   Put_Line ("Open route result: " & Success'Image);
   Move_Train (Route_Left_Middle, Success);
   Put_Line ("Move train result: " & Success'Image);
   Put_Line ("[     ||     |---->|     ||     ]");
   Put_Line ("#################################");

   Put_Line ("#################################");
   Put_Line ("[     ||     |---->|     ||     ]");
   Open_Route (Route_Middle_Right, Success);
   Put_Line ("Open route result: " & Success'Image);
   Move_Train (Route_Middle_Right, Success);
   Put_Line ("Move train result: " & Success'Image);
   Put_Line ("[     ||     |     |---->||     ]");
   Put_Line ("#################################");

   Put_Line ("#################################");
   Put_Line ("[     ||     |     |---->||     ]");
   Open_Route (Route_Leave_Right, Success);
   Put_Line ("Open route result: " & Success'Image);
   Move_Train (Route_Leave_Right, Success);
   Put_Line ("Move train result: " & Success'Image);
   Put_Line ("[     ||     |     |     ||---->]");
   Put_Line ("#################################");

end Main;
