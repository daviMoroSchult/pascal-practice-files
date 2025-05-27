program matrizEsparsa;
const MAX = 1000;
type t_matriz = record
        lin, col : integer;
        dados : array[1..MAX, 1..MAX] of real;
     end;
     elemento = record
        l, c : integer;
        val : real;
     end;
     t_matrizesp = record
        tam : integer;
        dados : array [1..100000] of elemento;
     end;

var mESP : t_matrizesp; mT : t_matriz; somaUM, somaDOIS : t_matriz; i, j, linha, coluna : longint ;


function paraEsp (var mT : t_matriz) : t_matrizesp;
var i, j, tam : longint;


begin
tam:= 0;
for i:= 1 to mT.lin do
  begin
     for j := 1 to mT.col do
        begin
           if mT.dados[i,j] <> 0
              then
                 begin
                   tam := tam + 1;
                   paraEsp.dados[tam].l := i;
                   paraEsp.dados[tam].c := j;
                   paraEsp.dados[tam].val := mT.dados[i, j];
                   paraEsp.tam := tam;
                 end;
        end;
  end;


end;

function paraT_m (var mESP : t_matrizesp) : t_matriz;
var i : longint;


begin


for i := 1 to mESP.tam do
   begin
      paraT_m[mESP.dados[i].l, mESP.dados[i].c] := mESP.dados[i].val;
   end;

end;

function somaMatrizEsp (var somaUM : t_matrizesp; var somaDOIS : t_matrizesp) : t_matriz;
var soma1 := paraT_m(somaUM); soma2 := paraT_m(somaDOIS); i, j : longint;

begin

for i := 1 to soma1.lin do
   begin
      for j := 1 to soma1.col do
         begin
            somaMatrizEsp[i, j] := soma1[i, j] + soma2[i, j];
         end;
   end;



end;


begin

read(linha, coluna);

for i := 1 to linha do
   begin
      for j := 1 to coluna do
         begin
            read(mT[i, j]);
         end;
   end;


for i := 1 to paraEsp[mT].tam do
         begin
            writeln(paraEsp[mT].dados[i]);
         end;






end.




