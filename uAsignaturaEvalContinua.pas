{ Unidad para asignatura con evaluación continua }
unit uAsignaturaEvalContinua;

interface
uses uPersona;

const
  MAX_ALUMNOS = 30;



procedure InicializarAsignatura(var A: TAsignatura; Prof: PPersona);
function AnadirAlumno(var A: TAsignatura; Alumno: PPersona): Boolean;
procedure Evaluar(var A: TAsignatura; AlumnoDNI: string; Nota: Real; Parcial: Integer);
function CalcularNotaFinal(A: TAsignatura; AlumnoDNI: string): Real;

implementation





end.