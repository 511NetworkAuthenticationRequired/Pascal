// Pide al usuario dos números A y B, y muestra todos los números primos entre ellos.
program ej3;
var
    A, B, numero, divisor: integer;
    verificar_primo: boolean;
begin
    writeln('Ingrese A: ');
    readln(A);
    writeln('Ingrese B: ');
    readln(B);

    if (A > B) then
    begin
        writeln('Error: A debe ser menor o igual que B.');
        halt();
    end;

    for numero:= A to B do
    begin
        if numero > 1 then
        begin
            verificar_primo := true;
            for divisor:= 2 to trunc(sqrt(numero)) do
            begin
                if (numero mod divisor = 0) then
                begin
                    verificar_primo := false;
                    break;
                end;
            end;
            if verificar_primo then
                writeln(numero);
        end;
    end;
end.
