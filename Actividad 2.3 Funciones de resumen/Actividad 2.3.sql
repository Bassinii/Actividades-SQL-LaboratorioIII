-- 1 Listado con la cantidad de cursos.
    SELECT 
        COUNT(ID) AS 'Cantidad de cursos'
    FROM Cursos

-- 2 Listado con la cantidad de usuarios.
    SELECT 
        COUNT(ID) AS 'Cant
        idad de usuarios'
    FROM Usuarios
-- 3 Listado con el promedio de costo de certificación de los cursos.
    SELECT 
        AVG(CostoCertificacion) AS 'Promedio costo de certificacion'
    FROM Cursos

-- 4 Listado con el promedio general de calificación de reseñas.
    SELECT
        AVG(Puntaje) AS 'Promedio general de calificaciones'
    FROM Reseñas
-- 5 Listado con la fecha de estreno de curso más antigua.
    SELECT 
        MIN(Estreno) as 'Fecha mas antigua'
    FROM Cursos

-- 6 Listado con el costo de certificación menos costoso.
    SELECT
        MIN(CostoCertificacion) AS 'Costo de certificación menor'
    FROM Cursos

-- 7 Listado con el costo total de todos los cursos.
    SELECT 
        SUM(CostoCurso) as 'Costo Total'
    FROM Cursos

-- 8 Listado con la suma total de todos los pagos.
    SELECT
        SUM(Importe) as 'Suma tota de los pagos'
    FROM Pagos

-- 9 Listado con la cantidad de cursos de nivel principiante.
    SELECT 
        COUNT(IDNivel) as 'Cantidad Principiantes'
    FROM Cursos
    WHERE IDNivel = 5

-- Otra solucion con subconsulta
    SELECT 
        COUNT(IDNivel) AS 'Cantidad Principiantes'
    FROM Cursos
    WHERE IDNivel = (SELECT ID FROM Niveles N WHERE N.Nombre = 'Principiante');

-- 10 Listado con la suma total de todos los pagos realizados en 2020.

-- 11 Listado con la cantidad de usuarios que son instructores.
-- 12 Listado con la cantidad de usuarios distintos que se hayan certificado.
-- 13 Listado con el nombre del país y la cantidad de usuarios de cada país.
-- 14 Listado con el apellido y nombres del usuario y el importe más costoso abonado como pago. 
--    Sólo listar aquellos que hayan abonado más de $7500.
-- 15 Listado con el apellido y nombres de usuario de cada usuario y el importe más costoso del curso al cual se haya inscripto.
--    Si hay usuarios sin inscripciones deben figurar en el listado de todas maneras.
-- 16 Listado con el nombre del curso, nombre del nivel, cantidad total de clases y duración total del curso en minutos.
-- 17 Listado con el nombre del curso y cantidad de contenidos registrados. 
--    Sólo listar aquellos cursos que tengan más de 10 contenidos registrados.
-- 18 Listado con nombre del curso, nombre del idioma y cantidad de tipos de idiomas.
-- 19 Listado con el nombre del curso y cantidad de idiomas distintos disponibles.
-- 20 Listado de categorías de curso y cantidad de cursos asociadas a cada categoría.
--    Sólo mostrar las categorías con más de 5 cursos.
-- 21 Listado con tipos de contenido y la cantidad de contenidos asociados a cada tipo.
--    Mostrar también aquellos tipos que no hayan registrado contenidos con cantidad 0.
-- 22 Listado con Nombre del curso, nivel, año de estreno y el total recaudado en concepto de inscripciones. 
--    Listar también aquellos cursos sin inscripciones con total igual a $0.
-- 23 Listado con Nombre del curso, costo de cursado y certificación y cantidad de usuarios distintos inscriptos
--    cuyo costo de cursado sea menor a $10000 y cuya cantidad de usuarios inscriptos sea menor a 5. 
--    Listar también aquellos cursos sin inscripciones con cantidad 0.
-- 24 Listado con Nombre del curso, fecha de estreno y nombre del nivel del curso que más recaudó en concepto de certificaciones.
-- 25 Listado con Nombre del idioma del idioma más utilizado como subtítulo.
-- 26 Listado con Nombre del curso y promedio de puntaje de reseñas apropiadas.
-- 27 Listado con Nombre de usuario y la cantidad de reseñas inapropiadas que registró.
-- 28 Listado con Nombre del curso, nombre y apellidos de usuarios y la cantidad de veces que dicho usuario realizó dicho curso. 
--    No mostrar cursos y usuarios que contabilicen cero.
-- 29 Listado con Apellidos y nombres, mail y duración total en concepto de clases de cursos a los que se haya inscripto. 
--    Sólo listar información de aquellos registros cuya duración total supere los 400 minutos.
-- 30 Listado con nombre del curso y recaudación total. La recaudación total consiste en la sumatoria de costos de inscripción y 
--    de certificación. Listarlos ordenados de mayor a menor por recaudación.
    SELECT
        C.Nombre,
        (SUM(C.CostoCertificacion) + SUM(C.CostoCurso)) AS 'Recaudacion Total'
    FROM Cursos C
    GROUP BY C.Nombre
    ORDER BY [Recaudacion Total] DESC
