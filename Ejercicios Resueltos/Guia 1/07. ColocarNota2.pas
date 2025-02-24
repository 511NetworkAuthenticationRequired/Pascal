// Idem al ejercicio anterior, pero evitar que el programa salga cuando sea un error (numero fuera del rango) y volver a solicitarlo.
program ColocarNota;
var
    nota: longint;
begin
    repeat
        writeln('Ingrese la nota del alumno.');
        read(nota);
        if not(nota in [0..10]) then
            writeln('ERROR: numero fuera de rango. Intente de nuevo.');
    until (nota in [0..10]); 
        begin
            case nota of
                0..3: writeln('Mal.');
                4..5: writeln('Insuficiente');
                6..7: writeln('Bien.');
                8..9: writeln('Sobresaliente.');
                10: writeln('Perfecto.');
            end;
        end;
end.
