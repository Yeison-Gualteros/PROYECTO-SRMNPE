ALTER TABLE TelefonoEstudiante
ADD CONSTRAINT FK_TelefonoEstudiante_CandidatoEstudiante
FOREIGN KEY (EstudianteID)
REFERENCES CandidatoEstudiante (EstudianteID);

ALTER TABLE DireccionResidencia
ADD CONSTRAINT FK_DireccionResidencia_CandidatoEstudiante
FOREIGN KEY (EstudianteID)
REFERENCES CandidatoEstudiante (EstudianteID);

ALTER TABLE AcudienteEstudiante
ADD CONSTRAINT FK_AcudienteEstudiante_CandidatoEstudiante
FOREIGN KEY (EstudianteID)
REFERENCES CandidatoEstudiante (EstudianteID);

ALTER TABLE AcudienteEstudiante
ADD CONSTRAINT FK_AcudienteEstudiante_Acudiente
FOREIGN KEY (AcudienteID)
REFERENCES Acudientes (AcudienteID);
--
ALTER TABLE TelefonoAcudiente
ADD CONSTRAINT FK_TelefonoAcudiente_Acudientes
FOREIGN KEY (AcudienteID)
REFERENCES Acudientes (AcudienteID);

ALTER TABLE Direccion_Acudiente
ADD CONSTRAINT FK_Direccion_Acudiente_Acudientes
FOREIGN KEY (AcudienteID)
REFERENCES Acudientes (AcudienteID);

ALTER TABLE EstudianteDocumentos
ADD CONSTRAINT FK_EstudianteDocumentos_CandidatoEstudiante
FOREIGN KEY (EstudianteID)
REFERENCES CandidatoEstudiante (EstudianteID);

ALTER TABLE Matricula
ADD CONSTRAINT FK_Matricula_CandidatoEstudiante
FOREIGN KEY (EstudianteID)
REFERENCES CandidatoEstudiante (EstudianteID);

ALTER TABLE Cupo
ADD CONSTRAINT FK_Cupo_CandidatoEstudiante
FOREIGN KEY (EstudianteID)
REFERENCES CandidatoEstudiante (EstudianteID);

ALTER TABLE Prematricula
ADD CONSTRAINT FK_Prematricula_Cupo
FOREIGN KEY (CupoID)
REFERENCES Cupo (CupoID);

ALTER TABLE RespuestaCupo
ADD CONSTRAINT FK_RespuestaCupo_Cupo
FOREIGN KEY (CupoID)
REFERENCES Cupo (CupoID);

ALTER TABLE RespuestaCupo
ADD CONSTRAINT FK_RespuestaCupo_Empleado
FOREIGN KEY (EmpleadoID)
REFERENCES Empleado (EmpleadoID);

ALTER TABLE DocumentoCupo
ADD CONSTRAINT FK_DocumentosCupo_Cupo
FOREIGN KEY (CupoID)
REFERENCES Cupo (CupoID);

ALTER TABLE SoporteAcademicoEmpleado
ADD CONSTRAINT FK_SoporteAcademicoEmpleado_Empleado
FOREIGN KEY (EmpleadoID)
REFERENCES Empleado (EmpleadoID);

ALTER TABLE SoporteLaboralesEmpleado
ADD CONSTRAINT FK_SoportesLaboralesEmpleado_Empleado
FOREIGN KEY (EmpleadoID)
REFERENCES Empleado (EmpleadoID);

ALTER TABLE CargosEmpleado
ADD CONSTRAINT FK_CargosEmpleado_Empleado
FOREIGN KEY (EmpleadoID)
REFERENCES Empleado (EmpleadoID);

ALTER TABLE CargosEmpleado
ADD CONSTRAINT FK_CargosEmpleado_Cargo
FOREIGN KEY (CargoID)
REFERENCES Cargo (CargoID);

ALTER TABLE InstitucionEducativa
ADD CONSTRAINT FK_InstitucionEducativa_Empleado
FOREIGN KEY (EmpleadoID)			
REFERENCES Empleado (EmpleadoID);

ALTER TABLE EstudianteDocumentos
ADD CONSTRAINT FK_EstudianteDocumentos_TipoDocumentos
FOREIGN KEY (TipoDocumentoID)
REFERENCES TipoDocumentos (TipoDocumentoID);

ALTER TABLE Matricula
ADD CONSTRAINT FK_Matricula_EdicionCurso
FOREIGN KEY (EdicionCursoID)
REFERENCES EdicionCurso (EdicionCursoID);

ALTER TABLE EdicionCurso
ADD CONSTRAINT FK_EdicionCurso_Curso
FOREIGN KEY (CursoID)
REFERENCES Curso (CursoID);

ALTER TABLE EstudianteDocumentos
ADD CONSTRAINT FK_EstudianteDocumentos_CandidatoEstudiante
FOREIGN KEY (EstudianteID)
REFERENCES CandidatoEstudiante (EstudianteID);

ALTER TABLE Matricula
ADD CONSTRAINT FK_Matricula_CandidatoEstudiante
FOREIGN KEY (EstudianteID)
REFERENCES CandidatoEstudiante (EstudianteID);

ALTER TABLE SubCursos
ADD CONSTRAINT FK_SubCursos_Curso
FOREIGN KEY (CursoID)
REFERENCES Curso (CursoID);

ALTER TABLE PlanEstudios
ADD CONSTRAINT FK_PlanEstudios_Curso
FOREIGN KEY (CursoID)
REFERENCES Curso (CursoID);

ALTER TABLE DetallePlanEstudio
ADD CONSTRAINT FK_DetallePlanStudio_PlanEstudios
FOREIGN KEY (PlanEstudiosID)
REFERENCES PlanEstudios (PlanEstudiosID);

ALTER TABLE DetallePlanEstudio 
ADD CONSTRAINT FK_DetallePlanEstudio_Materias
FOREIGN KEY (MateriaID)
REFERENCES Materias (MateriaID);

ALTER TABLE cargo
ADD CONSTRAINT FK_Cargo_Docente
FOREIGN KEY (DocenteID)
REFERENCES Docente (DocenteID);

ALTER TABLE Materias
ADD CONSTRAINT FK_Materias_Docente
FOREIGN KEY (DocenteID)
REFERENCES Docente (DocenteID);

ALTER TABLE CandidatoEstudiante
ADD CONSTRAINT FK_CandidatoEstudiante_EdicionCurso
FOREIGN KEY (EdicionCursoID)
REFERENCES EdicionCurso (EdicionCursoID);

ALTER TABLE Notas 
ADD CONSTRAINT FK_Notas_Materias
FOREIGN KEY (MateriaID)
REFERENCES Materias (MateriaID);

ALTER TABLE Notas 
ADD CONSTRAINT FK_Notas_Materias
FOREIGN KEY (MateriaID)
REFERENCES Materias (MateriaID);

ALTER TABLE Materias_Notas 
ADD CONSTRAINT FK_Materias_Notas_Materias
FOREIGN KEY (NotasID)
REFERENCES Materias (NotasID);
























