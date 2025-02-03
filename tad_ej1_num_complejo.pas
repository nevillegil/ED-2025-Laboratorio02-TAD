program tad_ej1_num_complejo;

uses
    uComplejo;

var
    c1, c2, resultado: TComplejo;
    parteReal, parteImaginaria: Double;

begin
    // Crear dos números complejos
    c1 := CrearComplejo(3, 4);
    c2 := CrearComplejo(1, 2);

    // Obtener y mostrar las partes reales e imaginarias
    parteReal := GetParteReal(c1);
    parteImaginaria := GetParteImaginaria(c1);
    writeln('Parte real de c1: ', parteReal:0:2);
    writeln('Parte imaginaria de c1: ', parteImaginaria:0:2);

    parteReal := GetParteReal(c2);
    parteImaginaria := GetParteImaginaria(c2);
    writeln('Parte real de c2: ', parteReal:0:2);
    writeln('Parte imaginaria de c2: ', parteImaginaria:0:2);

    // Sumar dos números complejos
    resultado := Sumar(c1, c2);
    writeln('Suma: ', resultado.Real:0:2, ' + ', resultado.Imaginario:0:2, 'i');

    // Restar dos números complejos
    resultado := Restar(c1, c2);
    writeln('Resta:', resultado.Real:0:2, ' + ', resultado.Imaginario:0:2, 'i');

    // Multiplicar dos números complejos
    resultado := Multiplicar(c1, c2);
    writeln('Multiplicación: ', resultado.Real:0:2, ' + ', resultado.Imaginario:0:2, 'i');

    // Dividir dos números complejos
    resultado := Dividir(c1, c2);
    writeln('División: ', resultado.Real:0:2, ' + ', resultado.Imaginario:0:2, 'i');

    // Elevar un número complejo a una potencia
    resultado := Potencia(c1, 2);
    writeln('Potencia: ', resultado.Real:0:2, ' + ', resultado.Imaginario:0:2, 'i');

    // Modificar las partes reales e imaginarias
    SetParteReal(c1, 5);
    SetParteImaginaria(c1, 6);
    writeln('Nuevo c1: ', c1.Real:0:2, ' + ', c1.Imaginario:0:2, 'i');
end.