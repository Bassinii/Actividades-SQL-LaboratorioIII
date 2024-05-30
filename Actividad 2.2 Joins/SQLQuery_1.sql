use Univ
go
-- 1 Listado con nombre de usuario de todos los usuarios y sus respectivos nombres y apellidos.
     SELECT U.NombreUsuario, D.Nombres, D.Apellidos FROM Usuarios U
     INNER JOIN Datos_Personales D
     ON U.ID = D.ID

-- 2 Listado con apellidos, nombres, fecha de nacimiento y nombre del país de nacimiento. 
     SELECT D.Apellidos, D.Nombres, D.Nacimiento as FechaNaciemiento, P.Nombre FROM Datos_Personales D
     INNER JOIN Localidades L ON L.ID = D.IDLocalidad 
     INNER JOIN Paises P ON P.ID = L.IDPais

-- 3 Listado con nombre de usuario, apellidos, nombres, email o celular de todos los usuarios que
--   vivan en una domicilio comience con vocal.
--   NOTA: Si no tiene email, obtener el celular.
     SELECT 
        U.NombreUsuario, 
        DP.Apellidos, 
        DP.Nombres,
        DP.Domicilio, 
        CASE 
            WHEN DP.Email is not null THEN DP.Email
            ELSE DP.Celular
        END AS Contacto
    FROM   
        Usuarios U 
    INNER JOIN 
        Datos_Personales DP ON U.ID = DP.ID
    WHERE
        DP.Domicilio LIKE '[aeiouAEIOU]%'
        AND (DP.Email IS NOT NULL OR DP.Celular IS NOT NULL)

-- 4 Listado con nombre de usuario, apellidos, nombres, email o celular o domicilio como 'Información de contacto'.
-- NOTA: Si no tiene email, obtener el celular y si no posee celular obtener el domicilio.
    SELECT 
        U.NombreUsuario,
        DP.Apellidos,
        DP.nombres,
        CASE 
            WHEN DP.Email IS NOT NULL THEN DP.Email
            WHEN DP.Celular IS NOT NULL THEN DP.Celular
            ELSE DP.Domicilio
        END AS 'Información de Contacto'
        FROM 
            Usuarios U
        INNER JOIN 
            Datos_Personales DP ON DP.ID = U.ID
        WHERE 
            DP.Email IS NOT NULL OR DP.Celular IS NOT NULL OR DP.Domicilio IS NOT NULL


-- 5 Listado con apellido y nombres, nombre del curso y costo de la inscripción de todos los usuarios inscriptos a cursos.
-- NOTA: No deben figurar los usuarios que no se inscribieron a ningún curso.
-- 6 Listado con nombre de curso, nombre de usuario y mail de todos los inscriptos a cursos que se hayan estrenado en el año 2020.
-- 7 Listado con nombre de curso, nombre de usuario, apellidos y nombres, fecha de inscripción, 
--      costo de inscripción, fecha de pago e importe de pago. Sólo listar información de aquellos que hayan pagado.
-- 8 Listado con nombre y apellidos, género, fecha de nacimiento, mail, nombre del curso y 
--     fecha de certificación de todos aquellos usuarios que se hayan certificado.
-- 9 Listado de cursos con nombre, costo de cursado y certificación, costo total (cursado + certificación) 
--    con 10% de todos los cursos de nivel Principiante.
-- 10 Listado con nombre y apellido y mail de todos los instructores. Sin repetir.
-- 11 Listado con nombre y apellido de todos los usuarios que hayan cursado algún curso cuya categoría sea 'Historia'.
-- 12 Listado con nombre de idioma, código de curso y código de tipo de idioma. Listar todos los 
--    idiomas indistintamente si no tiene cursos relacionados.
-- 13 Listado con nombre de idioma de todos los idiomas que no tienen cursos relacionados.
-- 14 Listado con nombres de idioma que figuren como audio de algún curso. Sin repeticiones.
-- 15 Listado con nombres y apellidos de todos los usuarios y el nombre del país en el que nacieron.
--    Listar todos los países indistintamente si no tiene usuarios relacionados.
-- 16 Listado con nombre de curso, fecha de estreno y nombres de usuario de todos los inscriptos.
--    Listar todos los nombres de usuario indistintamente si no se inscribieron a ningún curso.
-- 17 Listado con nombre de usuario, apellido, nombres, género, fecha de nacimiento y mail de todos los usuarios que no cursaron ningún curso.
-- 18 Listado con nombre y apellido, nombre del curso, puntaje otorgado y texto de la reseña.
--    Sólo de aquellos usuarios que hayan realizado una reseña inapropiada.
-- 19 Listado con nombre del curso, costo de cursado, costo de certificación,
--    nombre del idioma y nombre del tipo de idioma de todos los cursos cuya fecha de estreno haya sido antes del año actual.
--    Ordenado por nombre del curso y luego por nombre de tipo de idioma. Ambos ascendentemente.
-- 20 Listado con nombre del curso y todos los importes de los pagos relacionados.
-- 21 Listado con nombre de curso, costo de cursado y una leyenda que indique "Costoso" si el costo de cursado
--    es mayor a $ 15000, "Accesible" si el costo de cursado está entre $2500 y $15000, "Barato" si el costo 
--    está entre $1 y $2499 y "Gratis" si el costo es $0.
      SELECT Nombre, CostoCurso,
    CASE
        WHEN CostoCurso > 15000 THEN 'Costoso'
        WHEN CostoCurso BETWEEN 2500 AND 15000 THEN 'Accesible'
        WHEN CostoCurso BETWEEN 1 AND 2499 THEN 'Barato'
        WHEN CostoCurso = 0 THEN 'Gratis'
    END AS Leyenda
FROM
    Cursos;
-- hecho con chat gpt
