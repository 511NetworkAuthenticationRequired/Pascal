{ Ejercicio 8
Desarrolla un programa donde el usuario debe adivinar un número entre 1 y 100, y el programa le indique si el número es mayor o menor hasta que el usuario lo adivine. }
program AdivinarNumero;
uses crt;
    var
        numero_random, numero: integer;
begin
    Randomize;
    numero_random:= random(100) + 1;
    // writeln('Para controlar: ', numero_random);
    repeat
    begin
        writeln('Ingrese un numero: ');
        readln(numero);
        if (numero_random < numero) then
            writeln('El numero es menor al ingresado.')
        else
            writeln('El numero es mayor al ingresado.');
    end;
    until (numero = numero_random);
    writeln('Ha encontrado el numero, el cual era: ', numero_random);
end.
