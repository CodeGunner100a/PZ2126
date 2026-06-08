//EJERCICIO 3


function Ejercicio3(cad: String): String;
var
  i, cv, cc, total: Integer;
  c: Char;
  pv, pc: Double;
begin
  cv := 0;
  cc := 0;

  for i := 1 to Length(cad) do
  begin
    c := LowerCase(cad[i])[1];
    if c in ['a', 'e', 'i', 'o', 'u'] then
      cv := cv + 1
    else if c in ['b'..'d', 'f'..'h', 'j'..'n', 'p'..'t', 'v'..'z'] then
      cc := cc + 1;
  end;

  total := cv + cc;

  if total > 0 then
  begin
    pv := (cv / total) * 100;
    pc := (cc / total) * 100;
  end
  else
  begin
    pv := 0;
    pc := 0;
  end;

  Result :=
    'Vocales     = ' + IntToStr(cv) + #13#10 +
    'Consonantes = ' + IntToStr(cc) + #13#10 +
    '% Vocales   = ' + FormatFloat('0.00', pv) + '%' + #13#10 +
    '% Consonantes = ' + FormatFloat('0.00', pc) + '%';
end;


//LLAMADA

ShowMessage(Ejercicio3(cad));
