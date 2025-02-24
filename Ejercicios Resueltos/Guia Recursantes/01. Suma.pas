// Escribe un programa que solicite números enteros positivos al usuario hasta que ingrese un número negativo. Luego, muestra la suma de todos los números ingresados.
program Suma;
var
    numero, suma: integer;
begin
    suma:= 0;
    repeat
        writeln('Ingrese un numero: ');
        readln(numero);
        if (numero > 0) then
            suma:= suma + numero;
    until (numero < 0);
    writeln(suma);
end.
