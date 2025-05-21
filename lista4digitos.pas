program verificar_se_tem_digitos_repetidos;

var n, d1, d2, d3, d4, i, contador : integer ;

procedure separan (var n, d1, d2, d3, d4: integer ); (*separa n em 4 digitos*)

begin
  d4:= n mod 10;
  n := n div 10;
  d3:= n mod 10;
  n := n div 10;
  d2:= n mod 10;
  n := n div 10;
  d1:= n mod 10;

end;

function checagem (var d1, d2, d3, d4 : integer): boolean;

begin

if d1 = d2 then
   checagem:= false
      else if d1 = d3 then
         checagem:= false
      else if d1 = d4 then
         checagem:= false
      else if d2 = d3 then
         checagem:= false
      else if d2 = d4 then
         checagem:= false
      else if d3 = d4 then
         checagem := false
         else checagem := true;

end;


begin

writeln('digite um numero de 1023 acima');

read(n);

for i := 1023 to n do
begin
    separan(n, d1, d2, d3, d4);
    if checagem(d1, d2, d3, d4) then
       contador:= contador + 1;
end;
  writeln(contador);
  read(n);
end.














