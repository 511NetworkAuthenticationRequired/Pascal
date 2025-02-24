// 5) Escribir un programa en pascal que dado dos números reales (x e y) realice la suma, resta, multiplicación, división entera y resto de los mismos. Tanto x como y deben ser ingresados por el usuario. El usuario es el que ingresa que operación quiere hacer.
program ej1;
var
  x, y: real;
  opcion: integer;
begin
  writeln('Ingrese dos operandos.');  
  readln(x, y);
  writeln('Los numeros ingresados son: x = ', x :6:2, ', y = ', y :6:2, '.');
  writeln('A continuacion se listan las posibles operaciones a seleccionar, eliga alguna:', #10,
      '* 1. Suma', #10,
      '* 2. Resta', #10,
      '* 3. Multiplicacion', #10,
      '* 4. Division (Entera)', #10,
      '* 5. Salir', #10);
  readln(opcion);
  case opcion of
    1: writeln('Suma: ', x + y :6:2);
    2:  writeln('Resta: ', x - y :6:2);
    3: writeln('Multiplicacion: ', x * y :6:2);
    4: writeln('Division: ', x / y :6:2);
    else halt;
  end;
  
end.
