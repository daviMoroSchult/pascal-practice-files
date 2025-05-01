program batalhao;
type vetor = array[1..20] of longint;
var v : vetor; x :integer;



procedure preencherRegimentosIniciais (var v : vetor);
  var i : longint;
  soldados: longint;

  begin
    soldados:= 1050;
    for i:= 1 to 20 do
      begin
        v[i] := soldados - (i*50);
      end;
  end;

function escolherRegimento (var v: vetor) : longint;
var i : longint;
maior: longint;


begin
   i:=1;
   maior:= 1;
   repeat
     if v[i] >= v[maior]
       then maior := i;
     i:= i+1;
   until  i > 20;
   escolherRegimento := maior;
end;

procedure passarSemanas (var v : vetor);
var semana: longint;
i: longint;
j:longint  ;


begin
 semana:= 1;
 j:=1;
 repeat
   begin
     for i:= j to 20 do
       begin
         if i = 5
           then v[i] := v[i] + 30
           else v[i] :=  v[i] + 100;
       end;
     writeln(escolherRegimento(v), ' ', semana);
     semana:= semana+1;
     j:= j+1;
     v[escolherRegimento(v)] := 0;
   end
 until (escolherRegimento(v) = 5);

 writeln(escolherRegimento(v), ' ', semana);


end;

begin

preencherRegimentosIniciais(v);

passarSemanas(v);







read(x);



end.
