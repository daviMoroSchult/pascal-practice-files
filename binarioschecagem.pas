program eh_binario;
var verd:boolean;
n, digito, decimal, potencia : integer ;

begin

writeln('digite um numero para verificarmos se ‚ binario ou nao');

read(n);

verd:= false;

while n div 10 <> 0 do
   begin
     if (n mod 10 = 1) OR (n mod 10 = 0) then verd := true;
     n := n div 10
   end;


if verd then
   begin
     decimal:= 0;
     potencia:= 1;
     while n > 0 do
        begin

          digito:= n mod 10;


          decimal:= decimal + (digito * potencia);

          n := n div 10;
          potencia:= potencia * 2;

        end;
        writeln('o numero em base decimal = ', decimal);
   end
  else
       writeln('o numero nao ‚ binario');








read(n);

end.












