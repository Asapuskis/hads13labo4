CREATE PROCEDURE tareasProfesor
	@email nvarchar(100),
	@codigoAsig nvarchar(10)
AS
	SELECT TareasGenericas.Codigo, TareasGenericas.Descripcion, TareasGenericas.HEstimadas, TareasGenericas.Explotacion, TareasGenericas.TipoTarea 
	FROM TareasGenericas
	INNER JOIN GruposClase ON TareasGenericas.codAsig = GruposClase.codigoAsig
	INNER JOIN ProfesoresGrupo ON GruposClase.codigo = ProfesoresGrupo.codigoGrupo
	WHERE GruposClase.CodigoAsig = @codigoAsig AND ProfesoresGrupo.email = @email
