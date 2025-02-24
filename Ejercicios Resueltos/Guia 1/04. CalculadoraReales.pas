// 1) Escribir un programa en pascal que dado dos números reales realice la suma, resta, multiplicación, división entera y resto de los mismos. Los numero son: X = 55 e Y = 30
program ej1;
var
    x, y: real;
begin
    writeln('Ingrese dos operandos.');
    readln(x, y);
    writeln('Los numeros ingresados son: x = ', x :6:2, ', y = ', y :6:2, '.');
    writeln('Suma: ', x + y :6:2);
    writeln('Resta: ', x - y :6:2);
    writeln('Multiplicacion: ', x * y :6:2);
    writeln('Division: ', x / y :6:2);
end.
