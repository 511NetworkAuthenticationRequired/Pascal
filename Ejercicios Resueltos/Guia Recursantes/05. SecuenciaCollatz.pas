{ El usuario ingresa un número N. Si N es par, se divide entre 2. Si es impar, se multiplica por 3 y se le suma 1. Se repite este proceso hasta llegar a 1.
Ejemplo:
Si N = 6, la secuencia generada es: 6 → 3 → 10 → 5 → 16 → 8 → 4 → 2 → 1. }
program SecuenciaCollatz;
var
    N: longint;
    procedure GenerarSecuencia(N: longint);
    begin
        if (N = 1) then
            writeln(N)
        else
        begin
            writeln(N);
            if ((N mod 2) = 0) then
                GenerarSecuencia(N div 2)
            else
                GenerarSecuencia((N * 3) + 1);
        end;
    end;
begin
    writeln('Ingrese un numero: ');
    readln(N);
    GenerarSecuencia(N);
end.
