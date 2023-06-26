SELECT * FROM Acudiente_Estudiante;
SELECT * FROM Cargos;

Create view Acudiente_Estudiante as
select AcudienteID, EstudianteID 
FROM AcudienteEstudiante

create view Acudiente as
SELECT AcudienteID, Nombres as Nombre, Apellidos as apellido from Acudientes 

Create view Candidato_Estudiante as
select EstudianteID, Nombres as Nombre, Apellidos as Apellido from CandidatoEstudiante

Create view Cargos as
Select CargoID, NombreCargo as 'Nombre del Cargo' from Cargo

Create view Cargos_Empleado as
Select CargosEmpleadoID, Evaluacion, Observaciones, NumeroContrato as 'Numero de Empleado' from CargosEmpleado

Create view cupos as
select CupoID, EstudianteID, Curso from Cupo

Create view Cursos as
select cursoID, Nombre, Abreviatura from Curso

create view Detalle_Plan_Estudio as
select DetallePlanEstudioID, MateriaID, Estado from DetallePlanEstudio

create view DireccionAcudiente as
select DireccionAcudienteID, BarrioA as Barrio, LocalidadA AS Localidad, CiudadA AS Ciudad, PaisA AS Pais from Direccion_Acudiente 

create view Direccion_Residencia as 
select DireccionID, Coordenadas, Localidad, Ciudad, Pais from DireccionResidencia

create view Documento_Cupo as
select DocumentoCupoID, NombreDocumento, Documento from DocumentoCupo

Create view Edicion_Curso as
select EdicionCursoID, CursoID, FechaInicio as 'Fecha de Inicio', FechaFin as 'Fecha de Fin' from EdicionCurso 

Create view Empleados as
select EmpleadoID, Nombres, Apellidos from Empleado

Create view Esudiante_Documentos as
select DocumentosID, NumeroDocumento as 'Numero de Documento', Observaciones  from EstudianteDocumentos

create view Institucion_Educativa as
select InstitucionEducativaID, Nombres as Nombre, Direccion,NivelEducativo from InstitucionEducativa

Create view materia as
select MateriaID, NombreMateria as 'Nombre de la materia', Estado  from Materias

create view Matriculas as
select MatriculaID, EdicionCursoID, Fecha from Matricula

create view Plan_Estudios as
select PlanEstudiosID, CursoID, VigenciaInicio as 'Vigencia de Inicio', VigenciaFinalizacion as 'Vigencia de Fin' from PlanEstudios

create view Prematriculas as
select PrematriculaID, CursosID, FechaRegistro as 'Fecha de Registro', FechaFinalizacion 'Fecha de finalizacion'  from Prematricula

Create view Respuesra_Cupo as
select RespuestaCupoId, Observaciones, FechaRespuesta as 'Fecha de Respuesta' from RespuestaCupo

create view Soporte_Academico_Empleado as
select SoporteAcademicoID, NivelAcademico, Modalidad, TituloObtenido as 'Titulo adquirido' from SoporteAcademicoEmpleado

create view Soporte_Laborales_Empleado as
select SoporteLaboralesID, Nombre, FuncionesDesarrolladas as 'Funciones Desarrolladas' from SoporteLaboralesEmpleado

Create view sub_Cursos as
select SubcursoID, CursoID, Nombre from SubCursos

Create view Telefono_Acudiente as
select TelefonoAcudienteID, NumeroA as Numero, IndicativoA as Indicativo  from TelefonoAcudiente

Create view Telefono_Estudiante as
select TelefonoId, numero, Indicativo from TelefonoEstudiante

Create view Tipo_Documentos as
select TipoDocumentoId, DocumentosID, TipoDocumento from TipoDocumentos

