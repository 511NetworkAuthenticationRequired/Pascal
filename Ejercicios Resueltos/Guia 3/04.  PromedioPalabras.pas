// Mostrar el promedio de palabras que hay por oración. Se requiere ocupar el mismo archivo dado anteriormente.
program PromedioPalabras;
    var
        secuencia: file of char;
        ventana: char;
        error, palabra, oracion: integer;
        promedio: real;
    begin
        assign(secuencia, 'archivo.txt');
        {$I-}
        Reset (secuencia);
        error:= IOResult;
        {$I+}
        if (error <> 0) then
        begin
            writeln('Error: el archivo archivo.txt exite?');
            halt(1);
        end;
        palabra:= 0; oracion:= 0;

        while (not EOF(secuencia)) do
        begin
            read(secuencia, ventana);
            while (not EOF(secuencia)) and (ventana <> '.') do
            begin
                while (not EOF(secuencia)) and (ventana = #32) do
                    read(secuencia, ventana);
                
                if (ventana <> '.') and (ventana <> '.') then
                    palabra:= palabra + 1;
                    
                while (not EOF(secuencia)) and (ventana <> #32) and (ventana <> '.') do
                    read(secuencia, ventana);
            end;

            if (ventana = '.') then
            begin
                oracion:= oracion + 1;
                if (not EOF(secuencia)) then
                    read(secuencia, ventana);
            end;
        end;

            if (oracion = 0) then
                promedio:= 0
            else
                promedio:= palabra / oracion;

            writeln('El promedio de palabras por oracion es: ', promedio:4:2);

            close(secuencia);
    end.
