{ 4) Desarrolle el algoritmo de validación de número y clave de usuario, teniendo en cuenta las siguientes reglas:
-Todos los usuarios tienen un número de usuario fijo de 5 números, y una contraseña numérica de longitud variable.
-Para validar la contraseña se toma el 1er dígito del número de usuario y, si es par se multiplica cada uno de los dígitos de la contraseña por 2, si es impar, se multiplica cada uno de los dígitos por 3.
-Los resultados de las multiplicaciones se deben sumar y, si el total es mayor a los primeros 2 dígitos menos significativos del usuario, la contraseña es válida.
Un ejemplo de esto es:
usuario: 43021 
Entonces: 4 es el primer digito del usuario, es par así que tenemos que multiplicar todos los número de la contraseña por 2 y sumarlos.
5 x 2 + 3 x 2 + 6 x 2 + 2 x 2 = 32
Como 32 es mayor a 21 (los dos últimos dígitos del usuario) la contraseña es válida.
Se debe hacer las validaciones necesarias y mostrar por pantalla : “contraseña válida” o “contraseña inválida”.}
program validacion;
    var
        usuario, contrasena: string;
        menos_significativo, suma, x, multiplicador: longint;
    function Convertir(n: char): longint;
    begin
        case n of
            '0': Convertir := 0;
            '1': Convertir := 1;
            '2': Convertir := 2;
            '3': Convertir := 3;
            '4': Convertir := 4;
            '5': Convertir := 5;
            '6': Convertir := 6;
            '7': Convertir := 7;
            '8': Convertir := 8;
            '9': Convertir := 9;
            else 
                writeln('Error.')
        end;
    end;
begin
    repeat
        writeln('Ingrese su usuario:');
        readln(usuario);
        if (length(usuario) <> 5) then writeln('Error: la longitud debe ser de 5 numeros, intente de nuevo.')
    until (length(usuario) = 5);
    writeln('Ingrese su contrasena:');
    readln(contrasena);

    menos_significativo := Convertir(usuario[4]) * 10 + Convertir(usuario[5]);

    if (Convertir(usuario[1]) mod 2) = 0 then // primer digito es par
        multiplicador:= 2
    else
        multiplicador:= 3;

    suma:= 0;
    for x:= 1 to length(contrasena) do
    begin
        suma:= suma + (Convertir(contrasena[x]) * multiplicador);
    end;
    
    if suma > menos_significativo then
        writeln('Contrasena valida.')
    else
        writeln('Contrasena invalida.');
end.
