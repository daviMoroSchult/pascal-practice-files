program equacao;

var m, n, x, y, total: integer;

begin

writeln('digite um numero para M e N');

read(m, n);

if m < n
   then
      begin
         x:= m;
         y:= n;
      end
   else
      begin
         y:= n;
         while m <> n div 2 do
            m:= m - 1;
         x:= m;

      end;

total:= (x*y) - (x*x) + y;

writeln(x , y , total);


end.