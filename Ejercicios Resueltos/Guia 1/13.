{ Se pide crear un pequeño login para usuarios, el usuario tiene que pasar su nombre y su contraseña, el sistema tiene que comparar contra unos valores previamente cargados y verificar si son o no iguales.
No se debe muestrar el valor de la contraseña cuandos se escribe por el teclado. Se debe permitir que el usuario tenga la posibilidad de ingresar la contraseña 3 veces. }
program ej13;
uses crt;
    const
        user = 'admin';
        pass = '1234';
    var
        usuario, contrasena: string;
        letra: char;
        x: longint;
begin
    for x:= 1 to 3 do
    begin
        write('Ingrese el usuario: ');
        readln(usuario);
        write('Ingrese la contrasena: ');
        contrasena:= '';
        letra:= readkey;
        while (letra <> #13) do
        begin
            contrasena:= contrasena + letra;
            write(chr(42));
            letra:= readkey;
        end;
        writeln;
        if (user = usuario) and (pass = contrasena) then
        begin
            writeln('Usuario y contrasena validos.');
            break;
        end
        else
            if (x <> 3) then
                writeln('Usuario o contrasena invalida. Intente de nuevo. ', x, '/3 intentos.')
            else
                writeln('Usuario o contrasena invalida. Sin intentos restantes: se cierra el programa.');
    end;
end.
