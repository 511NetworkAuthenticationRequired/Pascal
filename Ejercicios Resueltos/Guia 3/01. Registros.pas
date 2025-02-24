// Usando el tipo de dato Record, cargar 3 libros en memoria y después realizar un listado de todos los libros. De los libros se deben almacenar: El título, el nombre del autor, un breve resumen y el id del libro.
program ej1;
    type
        formato_libro = record
            titulo: string[50];
            autor: string[50];
            resumen: string[200];
            ID: longint;
        end;
    var
        libro_1, libro_2, libro_3: formato_libro;
        titulo, autor: string[50];
        resumen: string[200];
        respuesta: string;
        ID, contador, opcion: longint;

    procedure mostrar(libro: formato_libro);
    begin
        writeln('Nombre: ', libro.titulo);
        writeln('Autor: ', libro.autor);
        writeln('Resumen: ', libro.resumen);
        writeln('ID: ', libro.ID);
    end;
    procedure cargar(var libro: formato_libro);
    begin
        writeln('Libro numero #', contador);
        writeln('Ingrese nombre: ');
        readln(titulo);
        libro.titulo:= titulo;
        writeln('Ingrese autor: ');
        readln(autor);
        libro.autor:= autor;
        writeln('Ingrese resumen: ');
        readln(resumen);
        libro.resumen:= resumen;
        writeln('Ingrese ID: ');
        readln(ID);
        libro.ID:= ID;
    end;
begin  
    contador:= 0;
    repeat        
        contador:= contador + 1;
        writeln('Que libro desea cargar?', #10, '1 - Libro 1', #10, '2 - Libro 2', #10, '3 - Libro 3');
        readln(opcion);
        case opcion of
            1: cargar(libro_1);
            2: cargar(libro_2);
            3: cargar(libro_3);
            else writeln('Error: elija una de las opciones disponibles e intente de nuevo.')
        end;
        writeln('Desea cargar otro libro? (SI/NO)');
        readln(respuesta);
    until (respuesta = 'NO') or (respuesta = 'no');
    writeln('# LIBROS CARGADOS #');
    writeln('* LIBRO 1 *');
    mostrar(libro_1);
    writelN('* LIBRO 2 *');
    mostrar(libro_2);
    writeln('* LIBRO 3 *');
    mostrar(libro_3);
end.
