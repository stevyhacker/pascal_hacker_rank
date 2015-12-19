program PrviD;
   {Napisati program pomocu koga se iz zadatog intervala stampaju svi brojevi
   kojima je zbir cifara jednak zadatom broju,stampa se i koliko ima takvih brojeva.}

var
  m,n,i,k,brojistih:integer;

function zbircifara(b:integer):integer;

var
  zbir:integer;

begin
  zbir:=0;

  while b>0 do
  begin
    zbir := zbir + b mod 10;
    b:= b div 10;
  end;

  zbircifara:=zbir;
end;

begin

  write('Unesi m,pocetak intervala: ');
  readln(m);
  write('Unesi n,kraj intervala: ');
  readln(n);
  write('Unesi zadati broj: ');
  readln(k);
  brojistih:=0;

  for i:=m to n do
      begin
        if zbircifara(i)=k then
         begin
           write(i,' ');
           brojistih:= brojistih + 1;
         end;
      end;

  writeln();
  writeln('Ukupno brojeva sa istim zbirom cifara jednaki zadatom broju: ',brojistih);
  readln();

end.

