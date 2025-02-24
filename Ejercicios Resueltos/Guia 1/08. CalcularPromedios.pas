// Tomando el ejercicio anterior, realizar lo mismo pero para 10 alumnos, aparte calcular el promedio de notas.
program CalcularPromedios;
var
    nota, suma, x: longint;
begin
    suma:= 0;
    for x:= 1 to 10 do
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
        suma:= suma + nota;
    end;
    writeln('Promedio de notas: ', suma div 10);
end.
