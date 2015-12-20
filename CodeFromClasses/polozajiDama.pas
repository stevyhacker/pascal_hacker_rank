program polozajiDama;
type
        niz=array[1..8] of integer;
var v,brojac:integer;x:niz;



procedure pisi(x:niz);
var i,j:integer;
        begin
                brojac:=brojac+1;
                writeln('Resenje br: ',brojac);writeln;
                for j:=8 downto 1 do
                        begin
                                for i:=1 to 8 do
                                        if(x[i]=j) then write(' * ')
                                        else
                                        write(' 0 ');
                                        writeln;
                        end;
                writeln;
                readln;
         end;
 function moze(v,k:integer;x:niz):boolean;
 var i:integer; rez:boolean;

 begin
        rez:=true;
       //writeln(v:4,k:4);readln;
        for i:=1 to k-1 do
        if(x[i]=v) or (x[i]-i=v-k) or (i+x[i]=k+v) then
        rez:=false;
        moze:=rez;
 end;
 procedure postavi (k:integer; x:niz);
 var v:integer;
 begin
 if(k=8) then
        begin
        pisi(x);
        end
 else
        begin
                for v:=1 to 8 do
                        if moze(v,k+1,x)
                        then
                                begin
                                x[k+1]:=v;
                                postavi(k+1,x);
                                end;
        end;
 end;
 {Kraj procedure postavi}
 begin
    brojac:=0;
             postavi(0,x);
  writeln(brojac,'resenja');
  readln;
 end.
