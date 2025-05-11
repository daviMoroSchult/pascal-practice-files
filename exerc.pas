program prepop;

var pop1, pop2: real;
 t1, t2, i : integer;

begin

writeln('insira o n da populacao 1, 2, taxa de crescimento da populacao 1, 2.');
read(pop1, pop2, t1, t2);

if pop1 > pop2
        then
            begin

                if  t1 > t2
                        then writeln('nao')

                        else
                                 begin
                                     i := 0;
                                     while pop1 > pop2 do
                                       begin
                                         pop2:= pop2 + (pop2 * (t2 div 100));
                                         pop1:= pop1 + (pop1 * (t1 div 100));
                                         i := i + 1;
                                       end;
                                      writeln('sim, em ', 2024 + i);
                                 end
              end
        else
                begin

                    if  t2 > t1
                        then writeln('nao')

                        else
                                 begin
                                     i := 0;
                                     while pop2 > pop1 do
                                       begin
                                         pop2:= pop2 + (pop2 * (t2 div 100));
                                         pop1:= pop1 + (pop1 * (t1 div 100));
                                         i := i + 1;
                                       end;
                                     writeln('sim, em ', 2024 + i);
                                 end
        end

end.






