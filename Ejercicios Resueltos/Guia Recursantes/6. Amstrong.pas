{ Un número de Armstrong (o narcisista) es aquel cuya suma de sus dígitos elevados a la cantidad de cifras es igual al número.
Ejemplo:
153 → 1³ + 5³ + 3³ = 153 → Sí es.
9474 → 9⁴ + 4⁴ + 7⁴ + 4⁴ = 9474 → Sí es.
125 → 1³ + 2³ + 5³ = 134 → No es. }
program Amstrong;
uses Math;
var
    numero: longint;
    function ObtenerExponente(numero: longint): longint;
    begin
        if (numero < 10) then
            ObtenerExponente:= 1
        else
            ObtenerExponente:= ObtenerExponente(numero div 10) + 1;
    end;
    function DetectarNarcisista(numero, exponente: longint): longint;
    begin
        if (numero = 0) then
            DetectarNarcisista:= 0
        else
            DetectarNarcisista:= DetectarNarcisista(numero div 10, exponente) + Round(Power(numero mod 10, exponente));
    end;
begin
    writeln('Ingrese un numero: ');
    readln(numero);
    if (DetectarNarcisista(numero, ObtenerExponente(numero)) = numero) then
        writeln('El numero es narcisista')
    else
        writeln('El numero no es narcisista');
end.
