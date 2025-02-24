{ 6) En un colegio primario se necesita realizar un algoritmo que en vez de colocar las notas de los alumnos en forma numérica, la misma debe ser con una frase, el algoritmo debe traducir las notas del 0 al 10 en las siguientes frases:
-de 0 a 3: Mal
-de 4 a 5: Insuficiente
-de 6 a 7: Bien
-de 8 a 9: Sobresaliente
-cuando es 10: Perfecto
-Para valores mayores a 10 o menores a 0: ERROR, numero fuera de rango. }
program ColocarNotas;
var
    nota: longint;
begin
    writeln('Ingrese la nota del alumno.');
    read(nota);
    case nota of
        0..3: writeln('Mal.');
        4..5: writeln('Insuficiente');
        6..7: writeln('Bien.');
        8..9: writeln('Sobresaliente.');
        10: writeln('Perfecto.');
        else writeln('ERROR, numero fuera de rango.');
    end;
end.
