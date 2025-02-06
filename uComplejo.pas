unit uComplejo;


interface

type
TComplejo = RECORD
  r: double;
  i: double;
end;


procedure CrearComplejo(var c: TComplejo; r: Double; i: double);
procedure SetParteReal(var c: TComplejo; r: Double);
procedure SetParteImaginaria(var c: TComplejo; i: Double);
function GetParteReal(c: TComplejo): Double;
function GetParteImaginaria(c: TComplejo): Double;
function Sumar(c1, c2: TComplejo): TComplejo;
function Restar(c1, c2: TComplejo): TComplejo;
function Multiplicar(c1, c2: TComplejo): TComplejo;
function Dividir(c1, c2: TComplejo): TComplejo;
function Potencia(c: TComplejo; exponente: Integer): TComplejo;


implementation

procedure CrearComplejo(var c: TComplejo; r: Double; i: double);
begin
  c.r:=r;
  TComplejo.i:=i;
end;

procedure SetParteReal(var c: TComplejo; r: Double);
begin
  c.r:=r;
end;

procedure SetParteImaginaria(var c: TComplejo; i: Double);
  c.i:=i;

function GetParteReal(c: TComplejo): Double;
begin
 GetParteReal:= r;

end;

function GetParteImaginaria(c: TComplejo): Double;
begin
 GetParteImaginaria:= i;

end;



function Sumar(c1, c2: TComplejo): TComplejo;



function Restar(c1, c2: TComplejo): TComplejo;




function Multiplicar(c1, c2: TComplejo): TComplejo;




function Dividir(c1, c2: TComplejo): TComplejo;




function Potencia(c: TComplejo; exponente: Integer): TComplejo;
