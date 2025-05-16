program ler_imprimir_vetores_v1;
const MAX = 400;
type vetor = array[1..MAX] of longint;
var v : vetor; tam : longint;

procedure ler_vetor (var v : vetor; tam: longint );
var i, n : longint;

begin
   i:= 1;
   read(n);
   while (n <> 0) OR (i > tam) do
     begin
       v[i]:= n;
       i:= i+1;
       read(n);
     end;
end;

procedure imprimir_vetor (var v : vetor; tam : longint);
var i: longint;

begin
  for i:= 1 to tam do
    writeln(v[i])


end;

procedure gerar_vetor (var v: vetor;var tam: longint);

var i : longint;

begin
  for i:= 1 to tam do
    begin
      if (i mod 2 = 0)
         then
          v[i] := i * 2
        else
          v[i] := i * 3;
    end;



end;




begin

read(tam);

gerar_vetor(v, tam);
(*ler_vetor (v, tam);*)
imprimir_vetor (v, tam);


end.