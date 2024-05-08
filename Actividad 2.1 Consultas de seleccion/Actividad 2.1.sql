    USE Univ
    GO
-- 1) Listado de todos los idiomas.
    SELECT * FROM Idiomas
-- 2) Listado de todos los cursos.
    SELECT nombre FROM CURSOS
-- 3) Listado con nombre, costo de inscripción (costo de curso), costo de certificación y fecha de estreno de todos los cursos.
    SELECT nombre, costoCurso, costoCertificacion, Estreno FROM Cursos 
-- 4) Listado con ID, nombre, costo de inscripción y ID de nivel de todos los cursos cuyo costo de certificación sea menor a $5000.
    SELECT ID, Nombre, CostoCurso, IDNivel FROM Cursos WHERE CostoCertificacion > 5000 
-- 5) Listado con ID, nombre, costo de inscripción y ID de nivel de todos los cursos cuyo costo de certificación sea mayor a $1200.
-- 6) Listado con nombre, número y duración de todas las clases del curso con ID número 6.
-- 7) Listado con nombre, número y duración de todas las clases del curso con ID número 10.
-- 8) Listado con nombre y duración de todas las clases del curso con ID número 4. Ordenado por duración de mayor a menor.
-- 9) Listado de cursos con nombre, fecha de estreno, costo del curso, costo de certificación ordenados por fecha de estreno de manera creciente.
-- 10) Listado con nombre, fecha de estreno y costo del curso de todos aquellos cuyo ID de nivel sea 1, 5, 9 o 10.
-- 11) Listado con nombre, fecha de estreno y costo de cursado de los tres cursos más caros de certificar.
-- 12) Listado con nombre, duración y número de todas las clases de los cursos con ID 2, 5 y 7. Ordenados por ID de Curso ascendente y luego por número de clase ascendente.
-- 13) Listado con nombre y fecha de estreno de todos los cursos cuya fecha de estreno haya sido en el primer semestre del año 2019.
-- 14) Listado de cursos cuya fecha de estreno haya sido en el año 2020.
-- 15) Listado de cursos cuyo mes de estreno haya sido entre el 1 y el 4.
    SELECT C.Nombre, C.Estreno FROM Cursos C
    WHERE MONTH(Estreno) BETWEEN 1 AND 4
-- 16) Listado de clases cuya duración se encuentre entre 15 y 90 minutos.
    SELECT C.Nombre, C.Duracion FROM Clases C
    WHERE C.Duracion BETWEEN 15 AND 90
-- 17) Listado de contenidos cuyo tamaño supere los 5000MB y sean de tipo 4 o sean menores a 400MB y sean de tipo 1.
-- 18) Listado de cursos que no posean ID de nivel.
    SELECT * FROM Cursos
    WHERE IDNivel is null
-- 19) Listado de cursos cuyo costo de certificación corresponda al 20% o más del costo del curso.S
-- 20) Listado de costos de cursado de todos los cursos sin repetir y ordenados de mayor a menor.
    SELECT DISTINCT CostoCurso FROM Cursos
    ORDER BY CostoCurso DESC