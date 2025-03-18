// Determinar si un número es primo
program DeterminarPrimo;
var
    num, aux: longint;
    esPrimo: boolean;
begin
    writeln('Por favor ingrese un numero para saber si es entero:');
    readln(num);
    aux:= 2;
    esPrimo:= true;
    while (esPrimo = true) and (aux < num) do
    begin
        if (num mod aux = 0) then 
            esPrimo:= false;
        aux:= aux + 1;
    end;
    if (esPrimo = true) then
        writeln('El numero ingresado es Primo.')
    else
        writeln('El numero ingresado no es primo.');
end.
