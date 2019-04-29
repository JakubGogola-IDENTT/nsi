package Max_2 with SPARK_Mode is

   type Vector is array (Integer range <>) of Positive;
   
   function Find_Max_2 (V : Vector) return Integer
     with
       Pre => V'First < Integer'Last and V'Length > 0,
     Post => Find_Max_2'Result >= 0 and
     (Find_Max_2'Result = 0 or
        (for some I in V'Range => Find_Max_2'Result = V(I))) and
     (if Find_Max_2'Result /= 0 then
        (for some I in V'Range => V(I) > Find_Max_2'Result)) and 
     (if Find_Max_2'Result = 0
        then 
          (for all I in V'Range =>
               (for all J in V'Range => V(I) = V(J)))
            else
        (for all I in V'Range =>
             (if V(I) > Find_Max_2'Result then
                    (for all J in V'Range => V(J) <= V(I)))));
end Max_2;
