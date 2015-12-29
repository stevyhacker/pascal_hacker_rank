program zad1popravni;
{Stevan Bogosavljevic 46/15}
{napisati program kod koga se iz zadatog intervala nalazi zadati neparni broj koji se na najvise nacina moze predstaviti kao zbir nekog stepena dvojke i prostoga broja
15 2 + 13
   4 + 11
   8 + 7  }

var  pocetni,krajnji,temp,najveci,i,j,k,kprethodno:integer;

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

  readln(pocetni,krajnji);
  najveci:=pocetni;
  
  for i:= pocetni to krajnji do
      begin
        temp:=i;
		
        if temp mod 2 = 1 then
           begin
             j:=2;
             k:=0;
             kprethodno:=0;
			 
            while j<temp do
              begin
			  
                if prostBroj(temp-j) then
                    begin
                     k:=k+1;
                    end;
					
                 j:=j*2;
              end;
			  
             if k>kprethodno then najveci:=temp;
             kprethodno:=k;
           end;
      end;
	  
     writeln(najveci);
     readln();
end.


