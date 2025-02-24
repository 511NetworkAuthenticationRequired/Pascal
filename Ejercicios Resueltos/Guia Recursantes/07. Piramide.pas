{ Pide al usuario un número N y muestra una pirámide de números.
Ejemplo (si N = 5):
1  
1 2  
1 2 3  
1 2 3 4  
1 2 3 4 5 }
program Piramide;
var
    numero, x: integer;
    procedure GenerarPiramide(numero: integer);
    begin
        if (numero > 0) then
        begin
           GenerarPiramide(numero - 1);
            for x:= 1 to numero do
            begin
                write(x, #32);
            end;
            writeln()
        end;
    end;
begin
    writeln('Ingrese un numero: ');
    readln(numero);
    writeln('------------------------------------');
    GenerarPiramide(numero);
end.
