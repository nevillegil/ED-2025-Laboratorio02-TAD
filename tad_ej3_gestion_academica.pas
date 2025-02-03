{ Programa principal de ejemplo }
program tad_ej3_gestion_academica.pas;

uses
  uPersona, uAsignaturaEvalContinua, uAsignaturaEvalFinal;

var
  Profesor: PPersona;
  Alumno1, Alumno2: PPersona;
  AsigContinua: uAsignaturaEvalContinua.TAsignatura;
  AsigFinal: uAsignaturaEvalFinal.TAsignatura;

begin
  { Crear profesor }
  New(Profesor);
  Profesor^.Nombre := 'Juan';
  Profesor^.Apellido := 'García';
  Profesor^.DNI := '12345678A';
  Profesor^.FechaNacimiento := '1980-01-01';
  Profesor^.Rol := rProfesor;

  { Crear alumnos }
  New(Alumno1);
  Alumno1^.Nombre := 'Ana';
  Alumno1^.Apellido := 'López';
  Alumno1^.DNI := '87654321B';
  Alumno1^.FechaNacimiento := '2000-05-15';
  Alumno1^.Rol := rAlumno;

  New(Alumno2);
  Alumno2^.Nombre := 'Pedro';
  Alumno2^.Apellido := 'Martínez';
  Alumno2^.DNI := '98765432C';
  Alumno2^.FechaNacimiento := '2001-03-20';
  Alumno2^.Rol := rAlumno;

  { Inicializar asignaturas }
  uAsignaturaEvalContinua.InicializarAsignatura(AsigContinua, Profesor);
  uAsignaturaEvalFinal.InicializarAsignatura(AsigFinal, Profesor);

  { Añadir alumnos a ambas asignaturas }
  uAsignaturaEvalContinua.AnadirAlumno(AsigContinua, Alumno1);
  uAsignaturaEvalFinal.AnadirAlumno(AsigFinal, Alumno2);

  { Evaluar alumnos }
  WriteLn('Evaluando alumnos...');
  
  { Evaluación continua - varias notas }
  uAsignaturaEvalContinua.Evaluar(AsigContinua, '87654321B', 4.5, 1);
  uAsignaturaEvalContinua.Evaluar(AsigContinua, '87654321B', 8.5, 2);

  { Evaluación final - una nota }
  uAsignaturaEvalFinal.Evaluar(AsigFinal, '98765432C', 7.0);

  { Mostrar resultados }
  WriteLn('Notas finales Evaluación Continua:');
  WriteLn('Ana López: ', uAsignaturaEvalContinua.CalcularNotaFinal(AsigContinua, '87654321B'):0:2);

  WriteLn;
  WriteLn('Notas finales Evaluación Final:');
  WriteLn('Pedro Martínez: ', uAsignaturaEvalFinal.CalcularNotaFinal(AsigFinal, '98765432C'):0:2);

  { Liberar memoria }
  Dispose(Profesor);
  Dispose(Alumno1);
  Dispose(Alumno2);
end.