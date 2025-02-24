// Solicita al usuario ingresar una cantidad N de números enteros. Luego, cuenta cuántos de ellos son pares y cuántos son impares, mostrando los resultados al final.
program ContarParesImpares;
var
    numero, cont_par, cont_impar, x, y: integer;
begin
    writeln('Cuantos numeros quiere ingresar?');
    readln(x);
    cont_par:= 0;
    cont_impar:= 0;
    for y:= 1 to x do
    begin
        writeln('Ingrese un numero: ');
        readln(numero);
        if ((numero mod 2) = 0) then
            cont_par:= cont_par + 1
        else
            cont_impar:= cont_impar + 1;
    end;
    writeln('Total de numeros pares: ', cont_par);
    writeln('Total de numeros impares: ', cont_impar);
end.
