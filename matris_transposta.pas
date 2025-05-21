program matrizTransposta;
const MAX = 200;
type matriz = array[1..MAX,1..MAX] of longint;
var A, B : matriz; n , m, nb ,mb : longint; x, i : integer;


procedure imprimirMatrizA (var A : matriz; n, m : longint);
var i, j : integer;


begin
 for i := 1 to n do
   begin
     for j := 1 to m do
       begin
         writeln(A[i,j]);
       end;
   end;
end;

procedure imprimirMatrizB (var B : matriz; nb ,mb : longint);
var i, j : integer;


begin
 for i := 1 to nb do
   begin
     for j := 1 to mb do
       begin
         writeln(B[i,j]);
       end;
   end;
end;

procedure preencherMatrizA (var A: matriz);
var i, j : integer;

begin

 read(n, m);
 for i := 1 to n do
   begin
     for j := 1 to m do
       begin
         read(A[i,j]);
       end;
   end;
end;

procedure preencherMatrizB (var B: matriz);
var i, j: integer;

begin
 read(nb, mb);


 for i := 1 to nb do
   begin
     for j := 1 to mb do
       begin
         read(B[i,j]);
       end;
   end;
end;

procedure testeDaMatriz (var A, B : matriz; n, m : longint);

var  i, j : longint; igualdade : boolean;

begin
  igualdade := true;
  i:= 1;
  j:= 1;
  while  (i <= n) AND igualdade do
    begin
      while  (j <= m) AND igualdade do
       begin

        if A[i,j] <> B[j, i] then igualdade := false;
        j := j +1;
       end;
      i:= i + 1;

    end;

    if igualdade then
      writeln('B eh igual a  transposta de A')
       else
        writeln('B nao eh igual a transposta de A');


end;


begin

writeln('qual o tamanha da matriz A e seus elementos?');

preencherMatrizA(A);

imprimirMatrizA(A, n, m);

writeln('qual o tamanha da matriz B e seus elementos?');

preencherMatrizB(B);

imprimirMatrizB(B, nb, mb);

testeDaMatriz (A, B, n , m);

read(x);
end.





