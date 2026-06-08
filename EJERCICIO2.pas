
//EJERCICIO 2

function EsPrimo(x: Integer): Boolean;
var
  i: Integer;
begin
  Result := True;

  if x < 2 then
    Result := False
  else
  begin
    for i := 2 to x - 1 do
      if x mod i = 0 then
        Result := False;
  end;
end;

function Ejercicio2(n: Integer): String;
var
  dig, suma: Integer;
begin
  suma := 0;

  while n > 0 do
  begin
    dig := n mod 10;
    suma := suma + dig;
    n := n div 10;
  end;

  if EsPrimo(suma) = True then
    Result := IntToStr(suma) + ' Es primo'
  else
    Result := IntToStr(suma) + ' No es primo';
end;


//LLAMADA

  Edit2.Text := (Ejercicio2(n));
