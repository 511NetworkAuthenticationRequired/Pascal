// 2) Escribir un programa en pascal que dado dos números enteros (x e y) realice la suma, resta, multiplicación, división entera y resto de los mismos. Tanto x como y deben ser ingresados por el usuario
program ej2;
var
  x, y: integer;
begin
    writeln('Ingrese dos operandos.');
    readln(x, y);
    writeln('Los numeros ingresados son: x = ', x, ', y = ', y, '.');
    writeln('Suma: ', x + y);
    writeln('Resta: ', x - y);
    writeln('Multiplicacion: ', x * y);
    writeln('Division: ', x div y);
    writeln('Modulo: ', x mod y);
end.
