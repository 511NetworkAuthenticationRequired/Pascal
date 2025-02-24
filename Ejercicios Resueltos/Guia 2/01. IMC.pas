{ Calcular el IMC (índice de masa corporal) para esto se debe tener en cuenta los siguientes datos: Altura, Edad y Peso.
El cálculo del IMC es: IMC = Peso / (altura ^2)
Con el Peso en Kg y la altura en metros.
La altura puede ser de 10 cm a 240 cm, la edad puede ser de 4 a 140 años y el Peso puede ser de 10 kg a 300 kg.
Según el valor que da el calculo podemos tener:
-Para los mayores o iguales a 20 años, el IMC menor a 19 es bajo peso, entre 19 y 24 es normal, entre 25 y 29 es sobrepeso, y más de 30 es obeso.
-Para menores de 20 años el IMC es: menos de 14 es bajo peso, entre entre 14 y 19 es normal, entre 20 y 24 es sobrepeso y más de 25 es obeso. }
program indice; // habia hecho con reales el peso y la altura pero se hacia mas largo asique termine modificando todo para poder ser feliz
var
    altura, peso, edad, IMC: longint;
    resultado: string;
begin
    repeat
        writeln('Ingrese altura (10-240cm): ');
        readln(altura);
    until (altura in [10..240]);
    repeat
        writeln('Ingrese peso (10-300 kg): ');
        readln(peso);
    until (peso in [10..255]);
    repeat
        writeln('Ingrese edad: (4-140 anos)');
        readln(edad);
    until (edad in [4..140]);

    IMC:= round(peso / ((altura/100) * (altura/100)));
    if (edad in [20..140]) then
    begin
        case (IMC) of
            0..18: resultado:= 'peso bajo';
            19..24: resultado:= 'peso normal';
            25..29: resultado:= 'sobrepeso';
            else resultado:= 'obeso';
        end;
    end
    else
    begin
        case (IMC) of
            0..13: resultado:= 'peso bajo';
            14..19: resultado:= 'peso normal';
            20..24: resultado:= 'sobrepeso';
            else resultado:= 'obeso';
        end;
    end;

    writeln('Resultado: ', resultado);
end.
