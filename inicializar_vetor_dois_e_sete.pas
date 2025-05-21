program vetor_menosdois_sete;
const MAX = 200;
type vetor = array[1..MAX] of longint;
var v: vetor; tam: longint;

procedure gerarVetor (var v: vetor; tam: longint);
var i: longint;

begin

  for i:= 1 to tam do
    begin
      if (i mod 2 <> 0) then
        v[i] := -2
          else
        v[i] := 7;
    end;

end;

procedure imprimirVetor (var v: vetor; tam: longint);
var i : longint;

begin
  for i:= 1 to tam do
    begin
      writeln(v[i]);
    end;
end;

begin

read(tam);

gerarVetor(v, tam);

imprimirVetor(v, tam);



end.