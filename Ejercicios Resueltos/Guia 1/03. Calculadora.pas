// 3) Escribir un programa en pascal que dado dos números enteros (x e y) realice la suma, resta, multiplicación, división entera y resto de los mismos. Tanto x como y deben ser ingresados por el usuario. El usuario es el que ingresa que operación quiere hacer.
program ej1;
var
  x, y, opcion: integer;
begin
  writeln('Ingrese dos operandos.');  
  readln(x, y);
  writeln('Los numeros ingresados son: x = ', x, ', y = ', y, '.');
  writeln('A continuacion se listan las posibles operaciones a seleccionar, eliga alguna:', #10,
      '* 1. Suma', #10,
      '* 2. Resta', #10,
      '* 3. Multiplicacion', #10,
      '* 4. Division (Entera)', #10,
      '* 5. Modulo', #10,
      '* 6. Salir', #10);
  readln(opcion);
  case opcion of
    1: writeln('Suma: ', x + y);
    2: writeln('Resta: ', x - y);
    3: writeln('Multiplicacion: ', x * y);
    4: writeln('Division: ', x div y);
    5: writeln('Modulo: ', x mod y);
    else halt;
  end;
end.
