program Zadatak2;
{Stevan Bogosavljevic 46/15    }
 {napisati zadatak pomocu koga se zadati niz razdvaja na dva podniza na sledeci nacin,
prvi clan zadatog niza ide u prvi niz a poslije toga se upisivanje brojeva u prvi ili drugi novi niz mijenja kad god se u zadatom nizu nadju dva uzastopna broja iste parnosti.
2,5,6,7,4,2,5,8,3,1,6,2,4
y 2, 5 , 6, 7, 4, 1, 6, 4
z 2, 5, 8, 3, 2      }
var
n,i,j,k:integer;
niz: array of integer;
prviniz: array of integer;
druginiz: array of integer;
paran:boolean;
begin

  readln(n);
  setlength(niz,n);
  setlength(prviniz,n);
  setlength(druginiz,n);

  for i:=0 to n do
      begin
         read(niz[i]);
      end;

  prviniz[0]:=niz[0];
  if niz[0] mod 2 = 0 then paran:=true;
  for j:=1 to n do
      begin
         if niz[i] mod 2 = 0 then
         begin
           if paran then
           begin
              prviniz [i] := niz[i];
           end
           else
                   begin
                      druginiz [i] := niz[i];
                   end;
      end;

      writeln();
   for i:=0 to n do
      begin
         write(prviniz[i],' ');
      end;
         writeln();
    for i:=0 to n do
      begin
         write(druginiz[i],' ' );
      end;
    readln();
end;

end.

