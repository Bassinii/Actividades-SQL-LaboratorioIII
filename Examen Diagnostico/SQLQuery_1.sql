-- 1) ¿Cuánto tuvo que pagar la consulta el paciente con el turno nro 146?
-- Teniendo en cuenta que el paciente debe pagar el costo de la consulta del médico menos lo que cubre la cobertura de la obra social.
--  La cobertura de la obra social está expresado en un valor decimal entre 0 y 1. Siendo 0 el 0% de cobertura y 1 el 100% de la cobertura.
-- Si la cobertura de la obra social es 0.2, entonces el paciente debe pagar el 80% de la consulta.


-- 2) ¿Cuál es el apellido del médico (sexo masculino) con más antigüedad de la clínica? 
    SELECT 
        Apellido,
        FechaIngreso,
        SEXO
    From MEDICOS
    ORDER BY FechaIngreso ASC
    
-- 3) ¿Cuántos pacientes distintos se atendieron en turnos que duraron más que la duración promedio?
--     Ejemplo hipotético: Si la duración promedio de los turnos fuese 50 minutos. ¿Cuántos pacientes distintos se atendieron en 
--     turnos que duraron más que 50 minutos?
    SELECT DISTINCT
        P.IDPaciente,
        P.Nombre
    FROM Pacientes P
    INNER JOIN TURNOS T ON T.IDPACIENTE = P.IDPACIENTE
    WHERE T.DURACION > (SELECT AVG(Duracion) FROM TURNOS)

-- 4) ¿Cuántas médicas cobran sus honorarios de consulta un costo mayor a $1000?
    SELECT 
        M.IDMedico,
        M.SEXO,
        M.COSTO_CONSULTA
    FROM MEDICOS M
    WHERE M.SEXO like 'F' AND M.COSTO_CONSULTA > 1000
    ORDER BY M.COSTO_CONSULTA DESC

-- 5) ¿Cuáles son el/los paciente/s que se atendieron más veces? (indistintamente del sexo del paciente)
    SELECT 
        T.IDTURNO,
        P.IDPaciente,
        P.Nombre,
        P.Apellido
    FROM PACIENTES P
    INNER JOIN TURNOS T ON P.IDPACIENTE = T.IDPACIENTE
    WHERE APELLIDO like 'Marino'
    ORDER BY P.APELLIDO ASC

-- 6) ¿Cuántos médicos tienen la especialidad "Gastroenterología" ó "Pediatría"?
    SELECT 
        M.IDMEDICO,
        M.Nombre,
        M.Apellido,
        E.Nombre
    FROM MEDICOS M
    INNER JOIN ESPECIALIDADES E ON M.IDESPECIALIDAD = E.IDESPECIALIDAD
    WHERE E.NOMBRE like 'Gastroenterología' OR E.NOMBRE like 'Pediatría'

-- 7) ¿Cuántos turnos fueron atendidos por la doctora Flavia Rice?
    SELECT
        T.IDTURNO,
        M.IDMEDICO,
        M.Apellido,
        M.Nombre
    FROM MEDICOS M
    INNER JOIN TURNOS T ON T.IDMEDICO = M.IDMEDICO
    WHERE M.APELLIDO like 'Rice'

-- 9) ¿Cuál es el costo de la consulta promedio de los/as especialistas en "Oftalmología"?
    SELECT 
        AVG(M.COSTO_CONSULTA)
    FROM MEDICOS M
    INNER JOIN ESPECIALIDADES E ON E.IDESPECIALIDAD = M.IDESPECIALIDAD
    WHERE E.NOMBRE like 'Oftalmología'

-- 10) ¿Cuál es la cantidad de pacientes que no se atendieron en el año 2019? MAL
    SELECT DISTINCT
        T.IDPACIENTE
    FROM TURNOS T
    WHERE YEAR(T.FECHAHORA) != 2019
    ORDER BY IDPACIENTE ASC

-- 8) ¿Qué Obras Sociales cubren a pacientes que se hayan atendido en algún turno con algún médico de especialidad 'Odontología'?
    SELECT 
        T.