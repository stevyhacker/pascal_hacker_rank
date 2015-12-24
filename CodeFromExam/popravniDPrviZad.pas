program popravniDPrviZad;

{napisati program pomocu koga se iz zadatog intervala
  stampaju svi brojevi kojima su cifre iste parnosti
1 100 22 33 46 82}

var
  pocetakIntervala,krajIntervala,temp:integer;
  i,cifra:integer;
  sviParni,sviNeparni:boolean;

begin

  readln(pocetakIntervala,krajIntervala);

  sviParni:=true;
  sviNeparni:=true;

  for i:= pocetakIntervala to krajIntervala do
      begin
        temp:=i;
        sviParni:=true;
        sviNeparni:=true;

        while temp > 0 do
              begin
                cifra:= temp mod 10;
                if cifra mod 2 = 0 then sviNeparni:=false
                else  sviParni:=false;
                temp:= temp div 10;
              end;

        if sviNeparni=true then writeln(i);
        if sviParni=true then writeln(i);

      end;

     readln();

end.

