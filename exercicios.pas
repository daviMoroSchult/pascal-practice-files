program conta;
var
A, B, C, R, p1, p2, W, Y, Z, x: integer;
XR: real;

begin

  read (A, B, C, R, XR, p1, p2, W, Y, Z, x);

  XR := W*W  / A * x*x + B * x + C ;

  writeln (XR);

  XR :=  (p1 + p2) / (Y-Z) * R  /  W / A * B + R;

  writeln (XR);
end.
