program ehbinario;

var n, i : integer;
    bool: boolean;

function ehbinario (n: integer) : boolean;
   begin
     i := 10;
     bool:= true;

     if n > 10 then begin
        if n = 1 then begin
           bool:=false;
           ehbinario:=true;
        end
          else begin
            if n = 0 then begin
               bool:=false;
               ehbinario:=true;
               end
          end
     end;
     while bool do
        begin
           if n > 10
             then begin
               if n = 1 then begin
                 bool:= false;
                 ehbinario:= true
               end
               else begin
                 if n = 0 then begin
                   bool:=false;
                   ehbinario:=true;
                 end
               end

             end

             else begin
           if n mod i <> 0 then
               begin
                  begin
                               bool:= false;
                               ehbinario := true;
                            end;
                          i:= i*10
               end
                  else
                 if n mod i <> 1 then
                    begin
                       if n mod i < 1 then
                            begin
                               bool:= false;
                               ehbinario := true;
                            end;
                          i:= i*10;

                    end
                    else
                       begin
                         bool:= false;
                         ehbinario:= false;
                       end
               end
           end
        end;

begin

writeln('digite um numero n');

read(n);

writeln('Binario?', ehbinario(n));

read(n);


end.
