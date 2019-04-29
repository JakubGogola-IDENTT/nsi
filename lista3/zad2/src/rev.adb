procedure Rev (S : in out String)
  with
    SPARK_Mode,
    Pre => S'First < Positive'Last / 2 and S 'Last < Positive'Last / 2,
  Post => (for all I in S'Range => S(I) = S'Old(S'First + S'Last - I))
is
   Old : String(S'Range) := S;
begin
   for I in S'Range loop
      S(I) := Old (S'First + S'Last - I);

      pragma Loop_Invariant (for all J in S'First .. I => S(J) = Old(S'First + S'Last - J));
   end loop;
end Rev;
