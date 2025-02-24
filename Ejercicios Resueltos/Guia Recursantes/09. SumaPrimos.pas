// Desarrolla un programa que calcule la suma de los números primos entre 1 y un número n introducido por el usuario.
program SumaPrimos;
var
    n, x, y, suma: integer;
    primo: boolean;
begin
    writeln('Ingrese un numero: ');
    readln(n);
    suma:= 0;
    for x:= 2 to n do
    begin
        primo:= true;
        for y:= 2 to trunc(sqrt(x)) do
        begin
            if (x mod y) = 0 then
            begin
                primo:= false;
                break;
            end;
        end;
        if (primo = true) then
            suma:= suma + x;                
    end;
    writeln('La suma de los numeros primos para el intervalo entre 1 y ', n, ' es: ', suma);
end. 
