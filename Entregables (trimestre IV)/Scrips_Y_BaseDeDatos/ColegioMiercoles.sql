
use COLEGIO_SRMNPE
create table Acudientes(
AcudienteID int identity (1,1) primary key ,
Apellidos nvarchar (40) not null,
Nombres nvarchar (40) not null,
NumeroIdentificador nvarchar (32) not null,
Estado bit not null,
);

create table AcudienteEstudiante(
AcudienteEstudianteID int identity (1,1) primary key ,
AcudienteID int ,
EstudianteID int ,
Fecha_Creacion Date,
);

create table CandidatoEstudiante(
EstudianteID  int identity (1,1) primary key ,
Apellidos nvarchar (40) not null,
Nombres nvarchar (40) not null,
FechaNacimiento date,
TipoPersona nvarchar,
);

Create table Cargo(
CargoID int identity (1,1) primary key ,
NombreCargo nvarchar (40) not null,
Estado bit,
DocenteID int,
);


Create Table CargosEmpleado(
CargosEmpleadoID int identity (1,1) primary key ,
CargoID int,
EmpleadoID int ,
FechaInicio date ,
FechaFin date ,
Evaluacion char,
Observaciones nchar (265),
NumeroContrato nchar (50),
);

Create table Cupo(
CupoID int identity (1,1) primary key ,
FechaSolicitud date not null,
Estado bit,
Curso nchar (10) not null,
EstudianteID int ,
);

Create table Curso(
CursoID int identity (1,1) primary key ,
Nombre nchar (32) not null,
Abreviatura nchar (8) not null,
Estado bit,
);

Create table DetallePlanEstudio(
DetallePlanEstudioID int identity (1,1) primary key ,
PlanEstudiosID int ,
MateriaID int ,
Versions nchar (16) null,
Estado bit,
);

Create Table Direccion_Acudiente(
DireccionAcudienteID int identity (1,1) primary key ,
CoordenadasA nchar (50) null,
BarrioA nchar (50) null,
LocalidadA nchar (50) null,
CiudadA nchar (50) null,
PaisA nchar (50) null,
AcudienteID int ,
FechaCreacionA date,
EstadoA bit,
);

Create table DireccionResidencia(
DireccionID int identity (1,1) primary key ,
Coordenadas nvarchar (50) null,
Localidad nvarchar (50) null,
Ciudad nvarchar (50) null,
Pais nvarchar (50) null,
EstudianteID int ,
FechaCreacion date,
Estado bit,
);

Create table DocumentoCupo(
DocumentoCupoID int identity (1,1) primary key ,
NombreDocumento nvarchar (50) not null,
Documento image not null,
CupoID int ,
);

Create table EdicionCurso(
EdicionCursoID int identity (1,1) primary key ,
CursoID int ,
Año char (10),
FechaInicio date not null,
FechaFin date not null,
Estado bit,
);

Create table Empleado(
EmpleadoID  int identity (1,1) primary key,
Apellidos nvarchar (40) not null,
Nombres nvarchar (40) not null,
FechaNacimiento date,
);



Create table EstudianteDocumentos(
DocumentosID int identity (1,1) primary key ,
TipoDocumentoId int ,
NumeroDocumento char (10) not null,
Estado bit,
Observaciones nvarchar (265) not null,
EstudianteID int,
Fecha_Actualizacion date,
);

Create table InstitucionEducativa(
InstitucionEducativaID int identity (1,1) primary key ,
Nombres nvarchar (40) not null,
Direccion nvarChar (40) not null,
NivelEducativo nvarChar (40) not null,
Telefono nvarChar (10) not null,
Correo nvarChar (32) null,
EmpleadoID int ,
);

Create table Materias(
MateriaID  int identity (1,1) primary key ,
NombreMateria nvarchar (40) not null,
Estado bit not null,
Versions nchar (16) null,
);

Create table Matricula(
MatriculaID int identity (1,1) primary key ,
EdicionCursoID int ,
Fecha date,
Estado bit,
EstudianteID int ,
);

Create table PlanEstudios(
PlanEstudiosID int identity (1,1) primary key ,
CursoID int ,
VigenciaInicio date not null,
VigenciaFinalizacion nchar (10) not null,
Estado bit,
);

Create table Prematricula(
PrematriculaID int identity (1,1) primary key ,
FechaRegistro date,
FechaFinalizacion date,
CursosID int ,
CupoID int 
);

Create table RespuestaCupo(
RespuestaCupoId int identity (1,1) primary key ,
Estado bit,
Observaciones nvarchar (265) not null,
FechaRespuesta date,
EmpleadoID int ,
CupoID int ,
);

create table SoporteAcademicoEmpleado(
SoporteAcademicoID int identity (1,1) primary key ,
NivelAcademico nvarchar (64) not null,
Modalidad nvarchar (50) not null,
FechaGraduacion date,
TituloObtenido nvarchar (123) not null,
Institucion nvarchar (123) not null,
EmpleadoID int,
);

create table SoporteLaboralesEmpleado(
SoporteLaboralesID int identity (1,1) primary key ,
Nombre nvarchar (64) not null,
FechaInicio date,
FechaFin date,
FuncionesDesarrolladas nvarchar(max),
EmpleadoID int ,
);

create table SubCursos(
SubcursoID int identity (1,1) primary key ,
Nombre nvarchar (64) not null,
Abreviatura nvarchar(32) not null,
Estado bit not null,
CursoID int ,
);

create table TelefonoAcudiente(
TelefonoAcudienteID int identity (1,1) primary key ,
NumeroA nvarchar (64) not null,
IndicativoA nvarchar (64) not null,
TipoTelefonoA nvarchar (10) not null,
AcudienteID int ,
);

create table TelefonoEstudiante(
TelefonoId int identity (1,1) primary key ,
Numero nvarchar (10) not null,
Indicativo nvarchar (64) not null,
TipoTelefono nvarchar (10) not null,
EstudianteID int ,
);

create table TipoDocumentos(
TipoDocumentoId int identity (1,1) primary key ,
DocumentosID Int ,
TipoDocumento nvarchar(256),
Estado bit,
);

create table Notas(
NotaID int identity (1,1) primary key,
Nota float,
MateriaID int,
FechadeRegistro date,
Comentario nvarchar (256),
periodoEscolar nvarchar (256),
);

create table Docente(
DocenteID int identity (1,1) primary key,
CargoID int,
materiaID int,
Nombre nvarchar (40) not null,
Apellido nvarchar (40) not null,
Correo varchar (40) not null,
);

CREATE TABLE Materias_Notas(
Materias_NotasID int identity (1,1) primary key,
MateriasID int,
NotaID int,
);
















