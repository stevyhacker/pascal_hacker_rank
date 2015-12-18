program plusminus;
var
    n,i:integer;
    nums: array of integer;
    positive,negative,zeros:real;
    posfraction,negfraction,zerofraction:real;
begin
    positive:=0;
    negative:=0;
    zeros:=0;

    readln(n);
    setlength(nums,n-1);

    for i:= 0 to n-1 do
    begin
        read(nums[i]);
        if nums[i]>0 then positive:=positive+1;
        if nums[i]<0 then negative:=negative+1;
        if nums[i]=0 then zeros:= zeros+1;
    end;
    posfraction:=positive/n;
    negfraction:=negative/n;
    zerofraction:=zeros/n;
    writeln(posfraction:1:6);
    writeln(negfraction:1:6);
    writeln(zerofraction:1:6);

end.
