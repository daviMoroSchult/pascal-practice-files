program AeB;

var A, B : integer;
        i, soma : real;
begin

writeln('digite um numero para A e um para B');

read(A, B);

if A = B
   then
   else
     begin
       if A < B
        then writeln(A + B)
        else
           begin
            if A > B
               then
                  i:= 0;
                  while B <= A do
                     begin
                        if B mod 3 = 0
                           then
                               begin
                                  soma:= soma + B;
                                  i:= i + 1;
                               end;
                        B:= B + 1;
                     end;
                  writeln((soma / i):0:2);
         end;
       end;


read(A);
end.
