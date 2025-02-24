{ Pide al usuario un número entero positivo y calcula la suma de sus dígitos.
Ejemplo:
Si el usuario ingresa 345, la salida debe ser 3 + 4 + 5 = 12. }
program SumaDeDigitos;
var
    entrada: string;
    numero, codigo_error: longint;
function SumarDigitos(numero: longint): longint;
begin
    if (numero < 10) then // Caso base
        SumarDigitos:= numero
    else // Caso general
    begin
        SumarDigitos:= SumarDigitos(numero div 10) + (numero mod 10);
    end;
end;

begin
    repeat
        writeln('Ingrese un numero entero positivo: ');
        readln(entrada);
        val(entrada, numero, codigo_error);
        if (codigo_error <> 0) then
            writeln('Error: numero no valido (caracter, real u otros casos). Intente de vuelta')
        else if (numero < 0) then
            writeln('Error: numero negativo. Intente de vuelta.');
    until (codigo_error = 0) and (numero > 0);
    if (numero < 9) then
        writeln('La suma de los digitos es: ', numero)
    else
        writeln('La suma de los digitos es: ', SumarDigitos(numero));
end.
