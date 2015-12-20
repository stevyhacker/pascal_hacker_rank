program multi;
var n,i,j:integer;
function  prcif(n:integer):integer;
var p,c:integer;
   begin p:=1;
         while(n>0) do
            begin
                c:=n mod 10;p:=p*c;n:=n div 10;
            end;
         prcif:=p;
   end;
   function mp(n:integer):integer;
   var b:integer;

      begin
      b:=0;
      while (n>9) do
         begin
            n:=prcif(n);b:=b+1;
         end;
      mp:=b;
      end;
    begin
      write('n= ');readln(n);
      i:=1; j:=0;
      repeat
        if(mp(i)=n) then begin writeln('Prvi broj sa otpornoscu n je: ',i);
        j:=1;                 end;
        i:=i+1;
        until(j=1);
        readln;
    end.
