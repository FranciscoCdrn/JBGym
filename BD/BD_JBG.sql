CREATE DATABASE JBGym
GO
USE JBGym
GO

--CREACION
CREATE TABLE Usuario(id int NOT NULL,
					 usuario varchar(20) NOT NULL,
					 contraseņa varchar(20) NOT NULL)
GO
--LLAVES PRIMARIAS
ALTER TABLE Usuario
ADD CONSTRAINT PK_Usuario
PRIMARY KEY (id)
GO

-- PROCEDIMIENTOS
CREATE PROC SP_Login
@Usuario varchar(20),
@Contraseņa varchar(20)
As
	Select Count(*)
	FROM Usuario
	WHERE usuario = @Usuario AND Contraseņa=@Contraseņa 
GO

EXECUTE SP_Login 'admin', '1234'
Insert INTO Usuario VALUES(1,'admin', '1234')