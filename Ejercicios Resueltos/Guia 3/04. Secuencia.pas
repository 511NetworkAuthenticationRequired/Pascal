// partir de la secuencia anterior, genere una secuencia de salida (archivo2.txt) que posea todas las palabras que comienzan con vocal.
program Secuencia;
    var
        secuencia: file of char;
        salida: file of char;
        ventana: char;
        error, x: integer;
        palabra: string;
        vocales: set of char = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    begin
        assign(secuencia, 'archivo.txt');
        assign(salida, 'salida.txt');
        rewrite(salida);

        {$I-}
        Reset (secuencia);
        error:= IOResult;
        {$I+}
        if (error <> 0) then
        begin
            writeln('Error: archivo.txt no existe o no se puede abrir.');
            halt(1);
        end;

        palabra:= '';

        while (not EOF(secuencia)) do
        begin
            read(secuencia, ventana);
            while ((not EOF(secuencia)) and ((ventana in ['a'..'z']) or (ventana in ['A'..'Z']))) do
            begin
                palabra:= palabra + ventana;
                read(secuencia, ventana);
            end;
            if ((palabra <> '') and (palabra[1] in vocales)) then
            begin
                for x:= 1 to length(palabra) do
                begin
                    write(salida, palabra[x]);
                end;
                write(palabra, ' | ');
                write(salida, '|');
            end;
            palabra:= '';
        end;
        close(secuencia);
        close(salida);
    end.
