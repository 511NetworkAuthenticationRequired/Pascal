// Desarrolla una función que reciba un número y devuelva la cantidad de dígitos que tiene el número (sin convertirlo a cadena de texto).
program CalcularDigitos;
var
    numero: integer;
    procedure ContarDigitos(numero, contador: integer);
    begin
        if (numero = 0) then
            writeln('El numero ingresado tiene: ', contador, ' digitos.')
        else
            ContarDigitos(numero div 10, contador + 1);
    end;
begin
    writeln('Ingrese un numero: ');
    readln(numero);
    ContarDigitos(numero, 0);
end.
