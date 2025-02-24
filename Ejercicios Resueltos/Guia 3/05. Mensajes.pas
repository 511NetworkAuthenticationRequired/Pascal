{ Se posee una secuencia con los mensajes internos enviados entre los empleados de una empresa, la secuencia está formada de la siguiente manera: 3 caracteres para el destino, 3 caracteres para el origen, 3 caracteres que indican la cantidad de caracteres que tiene el mensaje y el mensaje. No existe ningún carácter que separe un mensaje de otro.
se pide:
a)Escribir una secuencia de salida con todos los mensajes (incluyendo origen y destino) que van hacia el área de Mantenimiento (que destino comience con 1).
b)Contar la cantidad de mensajes que se dirigen hacia el área de sistemas (que destino comience con 23).
Use la siguiente secuencia como ejemplo:
100001031vengan a arreglar esto rapido!120230043Existe una falla en el aire acondicionado.233100063El arreglo electrico recien va a poder ser posible el 23042018230001039No me anda la impresora, estoy apurado }
program Mensajes;
    var
        mensajes: file of char;
        caracter: char;
        mensajes_mantenimiento: file of char;
        resguardo, longitud_mensaje: string;
        error, contador_sistemas, x, numero: integer;

    procedure Incializar();
    begin
        assign(mensajes, 'mensajes.txt');
        assign(mensajes_mantenimiento, 'mensajes_mantenimiento.txt');
        rewrite(mensajes_mantenimiento);
        {$I-}
        Reset (mensajes);
        error:= IOResult;
        {$I+}
        if (error <> 0) then
        begin
            writeln('Error: archivo.txt no existe o no se puede abrir.');
            halt(1);
        end;

        resguardo:= '';
        longitud_mensaje:= '';
        contador_sistemas:= 0;
    end;
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
            else writeln('Error.')
        end;
    end;
    begin
        Incializar();

        while (not EOF(mensajes)) do
        // read(mensajes, caracter);
        begin
            for x:= 1 to 6 do
            begin
                if EOF(mensajes) then break;
                resguardo:= resguardo + caracter;
                read(mensajes, caracter);
            end;
            longitud_mensaje:= '';
            for x:= 1 to 3 do
            begin
                if EOF(mensajes) then break;
                read(mensajes, caracter);
                longitud_mensaje:= longitud_mensaje + caracter;
            end;
            numero:= Convertir(longitud_mensaje[1])*100 + Convertir(longitud_mensaje[2])*10 + Convertir(longitud_mensaje[3]);
            for x:= 1 to numero do
            begin
                if EOF(mensajes) then break;
                if (resguardo[1] = '1') then
                    write(mensajes_mantenimiento, caracter);
                read(mensajes, caracter);
            end;
            if ((resguardo[1] = '2') and (resguardo[2] = '3')) then
                contador_sistemas:= contador_sistemas + 1;
        end;
        close(mensajes);
        close(mensajes_mantenimiento);
    end.
