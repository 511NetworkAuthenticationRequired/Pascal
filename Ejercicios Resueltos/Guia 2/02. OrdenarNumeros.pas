// Escribir un algoritmo donde se ingresan 3 números distintos y se deben ordenar de menor a mayor, e imprimir por pantalla.
program ej3;
    var
        vec: array [1..3] of integer;
        i, j, k, x, y, aux: integer;
    begin
        writeln('Ingrese el primer valor.');
        readln(i);
        writeln('Ingrese el segundo valor.');
        readln(j);
        writeln('Ingrese el tercer valor.');
        readln(k);
        vec[1]:= i;
        vec[2]:= j;
        vec[3]:= k;

        for x:= 2 to high(vec) do
        begin
            aux:= vec[x];
            y:= (x - 1);
            while (aux < vec[y]) and (y > 0) do
            begin
                vec[y + 1]:= vec[y];
                y:= (y - 1);
            end;
            vec[y + 1]:= aux;
        end;

        for x:= low(vec) to high(vec) do
        begin
            writeln(vec[x]);
        end;
end.
