 --INSERTAR PROCEDIMIENTOS 
CREATE PROCEDURE Pro_Cargo
    @NombreCargo nvarchar(40),   
    @Estado bit
AS   
    SET NOCOUNT ON;  
    SELECT @Estado, @NombreCargo  
    FROM Cargo 
    WHERE @Estado = @Estado AND @NombreCargo = @NombreCargo; 
GO 

CREATE PROCEDURE Pro_Cupo
    @FechaSolicitud date,   
    @Estado bit,
	@Curso nchar (10)
	
AS  
    SET NOCOUNT ON;  
    SELECT @FechaSolicitud, @Estado, @Curso 
    FROM	Cupo 
    WHERE @FechaSolicitud = @FechaSolicitud  AND @Estado = @Estado AND @Curso = @Curso;  
GO

CREATE PROCEDURE Pro_Curso
    @Nombre nchar(32),   
    @Abreviatura nchar(8),
	@Estado bit
	
AS  
    SET NOCOUNT ON;  
    SELECT @Nombre, @Abreviatura, @Estado 
    FROM	Cupo 
    WHERE @Nombre = @Nombre  AND @Abreviatura = @Abreviatura AND @Estado = @Estado;  
GO 

CREATE PROCEDURE Pro_DetallePlanEstudio
    @Versions nchar(16),   
	@Estado bit
	
AS  
    SET NOCOUNT ON;  
    SELECT @Versions, @Estado 
    FROM	DetallePlanEstudio 
    WHERE @Versions = @Versions  AND @Estado = @Estado;  
GO

CREATE PROCEDURE Pro_DocumentoCupo
    @NombreDocumento nvarchar(50),   
	@Documento int
	
AS  
    SET NOCOUNT ON;  
    SELECT @NombreDocumento, @Documento 
    FROM	DocumentoCupo 
    WHERE @NombreDocumento = @NombreDocumento  AND @Documento = @Documento;  
GO

CREATE PROCEDURE Pro_EdicionCurso
    @Año char(10),   
	@FechaInicio date,
	@FechaFin date,
	@Estado bit
AS  
    SET NOCOUNT ON;  
    SELECT @Año, @FechaInicio, @FechaFin, @Estado 
    FROM	EdicionCurso 
    WHERE @Año = @Año  AND @FechaInicio = @FechaInicio AND @FechaFin = @FechaFin AND @Estado = @Estado;  
GO

CREATE PROCEDURE Pro_EdicionCurso
    @Año char(10),   
	@FechaInicio date,
	@FechaFin date,
	@Estado bit
AS  
    SET NOCOUNT ON;  
    SELECT @Año, @FechaInicio, @FechaFin, @Estado 
    FROM	EdicionCurso 
    WHERE @Año = @Año  AND @FechaInicio = @FechaInicio AND @FechaFin = @FechaFin AND @Estado = @Estado;  
GO

CREATE PROCEDURE Pro_Empleado
    @Apellidos nvarchar(40),   
	@Nombres nvarchar (40),
	@FechaNacimiento date
	
AS  
    SET NOCOUNT ON;  
    SELECT @Apellidos, @Nombres, @FechaNacimiento
    FROM	EdicionCurso 
    WHERE @Apellidos = @Apellidos  AND @Nombres = @Nombres AND @FechaNacimiento = @FechaNacimiento;
GO

CREATE PROCEDURE Pro_EstudianteDocumentos
    @NumeroDocumento char(10),   
	@Estado bit,
	@Observaciones nvarchar (265),
	@Fecha_Actualizacion date
	
AS  
    SET NOCOUNT ON;  
    SELECT @NumeroDocumento, @Estado, @Observaciones, @Fecha_Actualizacion
    FROM	EstudianteDocumentos 
    WHERE @NumeroDocumento = @NumeroDocumento  AND @Estado = @Estado AND @Observaciones = @Observaciones AND @Fecha_Actualizacion = @Fecha_Actualizacion;
GO

CREATE PROCEDURE Pro_Materias
    @NombreMateria nvarchar(40),   
	@Estado bit,
	@Versions nchar(16)
	
AS  
    SET NOCOUNT ON;  
    SELECT @NombreMateria, @Estado, @Versions
    FROM	EdicionCurso 
    WHERE @NombreMateria = @NombreMateria  AND @Estado = @Estado AND @Versions = @Versions;
GO

CREATE PROCEDURE Pro_Matricula
    @Fecha date,   
	@Estado bit
	
AS  
    SET NOCOUNT ON;  
    SELECT @Fecha, @Estado
    FROM	Matricula
    WHERE @Fecha = @Fecha  AND @Estado = @Estado;
GO
--EXEC (NombrePRO) @LastName = N'Ackerman', @FirstName = N'Pilar';  
--GO

--ELIMINAR PROCEDIMIENTOS
CREATE PROC ELIM_Cargo
	@NombreCargo nvarchar(40),   
    @Estado bit
	as
	begin
	delete from Cargo WHERE NombreCargo= @NombreCargo AND Estado = @Estado
	END
	GO

CREATE PROC ELIM_Cupo
	@FechaSolicitud date,   
    @Estado bit,
	@Curso nchar (10)
	as
	begin
	delete from Cupo WHERE FechaSolicitud= @FechaSolicitud AND Estado = @Estado AND Curso = @Curso
	END
	GO

CREATE PROC ELIM_Curso
	@Nombre nchar(32),   
    @Abreviatura nchar(8),
	@Estado bit
	as
	begin
	delete from Curso WHERE Nombre= @Nombre AND Abreviatura = @Abreviatura AND Estado = @Estado
	END
	GO

CREATE PROC ELIM_DetallePlanEstudio
	@Versions nchar(16),   
	@Estado bit
	as
	begin
	delete from DetallePlanEstudio WHERE Versions= @Versions AND Estado = @Estado
	END
	GO

CREATE PROC ELIM_DocumentoCupo
	@NombreDocumento nvarchar(50),   
	@Documento int
	as
	begin
	delete from Pro_DocumentoCupo WHERE NombreDocumento= @NombreDocumento AND Documento = @Documento
	END
	GO

--CONSULTA PROCEDIMIENTO
CREATE PROC con_Cargo
as
select * from  Cargo where Estado = 1
GO

CREATE PROC con_Cupo
as
select * from  Cupo where Estado = 1
GO

CREATE PROC con_Curso
as
select * from  Curso where Nombre = 3
GO

CREATE PROC con_DetallePlanEstudio
as
select * from  DetallePlanEstudio where Estado = 0
GO

CREATE PROC con_DocumentoCupo
as
select * from  DocumentoCupo where NombreDocumento = 1
GO

--EXEC con_Cargo

--ACTUALIZAR PROCEDIMIENTOS
CREATE PROC actua_Cargo
	@NombreCargo nvarchar(40),   
    @Estado bit
	as
	begin
	update Cargo set NombreCargo = @NombreCargo, Estado = @Estado
	WHERE NombreCargo = @NombreCargo
	end

CREATE PROC actua_Cupo
	@FechaSolicitud date,   
    @Estado bit,
	@Curso nchar (10)
	as
	begin
	update Cupo set FechaSolicitud = @FechaSolicitud, Estado = @Estado, Curso=@Curso 
	WHERE FechaSolicitud = @FechaSolicitud
	end

CREATE PROC actua_Curso
	@Nombre nchar(32),   
    @Abreviatura nchar(8),
	@Estado bit
	as
	begin
	update Curso set Nombre = @Nombre, Abreviatura = @Abreviatura, Estado = @Estado
	WHERE Nombre = @Nombre
	end

CREATE PROC actua_DetalleplanEstudio
	@Versions nchar(16),   
	@Estado bit
	as
	begin
	update DetallePlanEstudio set Versions = @Versions, Estado = @Estado
	WHERE Versions = @Versions
	end

CREATE PROC actua_Matricula
	@Fecha date,   
	@Estado bit
	as
	begin
	update Matricula set Fecha = @Fecha, Estado = @Estado
	WHERE Fecha = @Fecha
	end
--exec actua_Cargo ('Datos,Dato')








