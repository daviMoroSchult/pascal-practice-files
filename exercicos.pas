program lerNumeros;

var n, totalPar, totalImpar : integer;

begin

        writeln('insira numeros aleatorios');
        read(n);
        while n <> 0 do
                begin
                        if n mod 2 = 1
                                then totalImpar:= totalImpar + n
                                else totalPar:= totalPar + n;
                                read(n);
                end;
        writeln('soma par:', totalPar);
        writeln('soma impar', totalImpar);

end.
