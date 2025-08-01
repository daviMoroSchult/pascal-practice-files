program matrizSudoku;
uses Crt;
const MAX = 200;
type matriz = array[1..MAX, 1..MAX] of longint;
var m : matriz; tam : longint;  x : integer;

procedure lerMatriz  (var m : matriz; tam : longint);
var i, j : longint;



begin
for i := 1 to tam do
   begin
      for j := 1 to tam do
         begin
            read(m[i, j]);
         end;
   end;


end;

procedure checarLinhas (var m : matriz; tam :longint);
var i, j, soma : longint; sudoku : boolean;

begin

sudoku := true;
i := 1;

soma := 0;

repeat
j := 1;
soma := 0;

  repeat
    if (m[i, j] <> 0) AND (m[i, j] <> 1)
       then
         sudoku := false
       else
         soma := soma + m[i, j];


    if soma > 1
      then sudoku := false;

    j := j + 1;
  until (NOT sudoku) or (j > tam);
  i := i + 1;
until (NOT sudoku) or (i > tam);

if (NOT sudoku) then writeln('nao')
   else writeln('sim');

end;

procedure checarColunas (var m : matriz; tam :longint);
var i, j, soma : longint; sudoku : boolean;

begin

sudoku := true;
i := 1;
soma := 0;

repeat

  j := 1;
  soma := 0;

  repeat
    if (m[j, i] <> 0) AND (m[j, i] <> 1)
       then
         sudoku := false
       else
         soma := soma + m[j, i];


    if (soma > 1)
      then sudoku := false;

    j := j + 1;
  until (NOT sudoku) or (j > tam);
  i := i + 1;
until (NOT sudoku) or (i > tam);

if ( NOT sudoku) then writeln('nao')
   else writeln('sim');


end;




begin

writeln('qual o tamanho da matriz quadrada e seus elementos?');

read(tam);

lerMatriz(m, tam);

checarLinhas(m, tam);

checarColunas(m, tam);

repeat until KeyPressed;

end.









