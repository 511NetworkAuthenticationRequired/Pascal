// Crea una función que reciba un número entero y devuelva el número invertido. Ejemplo: si el número es 123, la salida debe ser 321.
program InvertirNumero;
var
    numero: string;
    function Invertir(numero: string; x: integer): string;
    begin
        if (x = 0) then
            Invertir:= ''
        else
        begin
            Invertir:= numero[x] + Invertir(numero, x - 1);
        end;
    end;
    function VerificarEntero(numero: string): boolean;
    var
        x: integer;
    begin
        VerificarEntero:= true;
        for x:= 1 to length(numero) do
        begin
            if not (numero[x] in ['0'..'9']) then
            begin
                VerificarEntero:= false;
                break;
            end;
        end;
    end;
begin
    repeat
        writeln('Ingrese un numero entero: ');
        readln(numero);
        if not VerificarEntero(numero) then
            writeln('Error: numero no valido. Intente de nuevo.');
    until (VerificarEntero(numero));
    writeln(Invertir(numero, length(numero)));
end.
