{ Unidad para asignatura con evaluación final }
unit uAsignaturaEvalFinal;

interface
uses uPersona;

const
  MAX_ALUMNOS = 30;



procedure InicializarAsignatura(var A: TAsignatura; Prof: PPersona);
function AnadirAlumno(var A: TAsignatura; Alumno: PPersona): Boolean;
procedure Evaluar(var A: TAsignatura; AlumnoDNI: string; Nota: Real);
function CalcularNotaFinal(A: TAsignatura; AlumnoDNI: string): Real;

implementation


end.