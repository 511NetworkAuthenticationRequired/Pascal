{ Contar todas las palabras de una secuencia
Para poder ejecutar este código es necesario crear un archivo (con nombre: archivo.txt) en el mismo lugar donde se encuentra el código del programa.
Colocar en el archivo el siguiente texto:
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu eros odio. Nunc venenatis nibh et dolor commodo, eu dictum libero malesuada. Nullam ac urna nisl. Quisque condimentum augue sagittis. }
program ContadorPalabras;
    var
        archivo: TEXT;
        ventana: char;
        contador: longint;
    begin
        assign(archivo, 'archivo.txt');
        reset(archivo);
        contador:= 0;
        while (not EOF(archivo)) do
        begin
            read(archivo, ventana);
            if (ventana = #32) then
                contador:= contador + 1;
        end;
        writeln('Cantidad de palabras: ', contador + 1);
        close(archivo);
    end.
