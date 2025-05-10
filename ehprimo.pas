program ehprimo;

var n, i: longint;
    bool: boolean;

function ehprimo(n: longint): boolean;
begin
   i := 1;
   bool:= true;
   while bool do
      begin
        if i <> 1 then
          begin
             if n mod i = 0 then
               ehprimo:= false;
               bool:= false;
          end
            else begin
            ehprimo:= true;
            bool:= false;
            end;
            i:=i+2;
      end
end;

begin

for n :=  1 to 1000 do
   if ehprimo(n) then
      writeln(n);

read(n);
end.
