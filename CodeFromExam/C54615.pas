program StevanZadJedan;
{Stevan Bogosavljevic 46/15}

{nacrtati algoritam i napisati program pomocu koga se iz zadatog intervala
  stampaju svi brojevi kod kojih je
zbir cifara i zbir kvadrata cifara prost broj
25 7   4 + 25 = 29}

var
  pocetakIntervala,krajIntervala,temp:integer;
  zbirCifara,zbirKvadrata,i,j:integer;

function prostBroj(x:integer):boolean;
var
  brojac:integer;
begin
    brojac:=0;
    for j:=2 to x do
              begin
                if x mod j = 0 then
                   begin
                     brojac:=brojac+1;
                   end;
              end;
    if brojac > 2 then
       begin
         prostBroj:=false;
       end
    else prostBroj:=true;
end;

begin

  readln(pocetakIntervala,krajIntervala);

  for i:= pocetakIntervala to krajIntervala do
      begin
        temp:=i;
        zbirCifara:=0;
        zbirKvadrata:=0;

        while temp >0 do
              begin
                zbirCifara:= zbirCifara + (temp mod 10);
                zbirKvadrata:= zbirKvadrata + (( temp mod 10) * (temp mod 10));
                temp:= temp div 10;
              end;

       if prostBroj(zbirCifara) then
          begin
            if prostBroj(zbirKvadrata) then
               begin
                   writeln(i);
               end;
          end;

      end;

     readln();

end.

