//EJERCICIO 1
// hacer una funcion para calcular la sumatoria de la siguiente serie:
//
// n terminos
//
// s = (1 ! / 1) + (3 ! / 4) + (5 ! / 5) + .. .n ! / n
function Factorial(x: Integer): Real;
var
  i: Integer;
  f: Real;
begin
  f := 1;

  for i := 1 to x do
    f := f * i;

  Result := f;
end;

function Ejercicio1(n: Integer): Real;
var
  i: Integer;
  cont: Integer;
  suma: Real;
begin
  suma := 0;

  cont := 1;
  i := 1;

  while i <= n do
  begin
    suma := suma + (Factorial(cont) / cont);

    cont := cont + 2;
    i := i + 1;
  end;

  Result := suma;
end;





//LLAMADA


  Edit2.Text := FloatToStr(Ejercicio1(n));



