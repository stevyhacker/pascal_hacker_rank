program C24615;
{Stevan Bogosavljevic 46/15
napisati program pomocu koga se zadati niz razdvaja na dva niza
tako sto prvi novi niz ulazi u prvi clan zadatog niya i svi
clanovi koji predstavljaju ekstremne vrijednosti pocetnog dijela
niza a u drugi niz ulaze svi ostali clanovi

10,6,9,5,11,7,4,12,8,13

10,6,5,11,4,12,13
2,9,7,8
 }
var
n,i,najmanji,najveci:integer;
niz: array of integer;
prviniz: array of integer;
druginiz: array of integer;

procedure stampaj(niz:array of integer);
begin
     for i:=0 to n-1 do
      begin
         if niz[i]<>0 then write(niz[i],' ');
      end;
     writeln();
end;

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
  najmanji:=niz[0];
  najveci:=niz[0];

  for i:=1 to n do
      begin
          if niz[i]<najveci then
          begin
             if niz[i]>najmanji then
             begin
             druginiz[i]:=niz[i];
             end
             else
             begin
                prviniz[i]:=niz[i];
                najmanji:=niz [i];
             end;
          end
          else
          begin
             prviniz[i]:=niz[i];
             najveci:=niz[i];
          end;
       end;
      writeln();



      (*stampa svih nizova*)


   stampaj(prviniz);
   stampaj(druginiz);

    readln();
    readln();
end.
