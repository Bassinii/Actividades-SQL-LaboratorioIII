-- 1 Hacer una función llamada FN_PagosxUsuario que a partir de un IDUsuario devuelva el total abonado en concepto de pagos. 
-- Si no hay pagos debe retornar 0.

-- 2 Hacer una función llamada FN_DeudaxUsuario que a partir de un IDUsuario devuelva el total adeudado. Si no hay deuda debe retornar 0.

-- 3 Hacer una función llamada FN_CalcularEdad que a partir de un IDUsuario devuelva la edad del mismo. La edad es un valor entero.

-- 4 Hacer una función llamada Fn_PuntajeCurso que a partir de un IDCurso devuelva el promedio de puntaje en concepto de reseñas.

-- 5 Hacer una vista que muestre por cada usuario el apellido y nombre, una columna llamada Contacto que muestre el celular, 
-- si no tiene celular el teléfono, si no tiene teléfono el email, si no tiene email el domicilio. También debe mostrar la edad del usuario,
--  el total pagado y el total adeudado.

-- 6 Hacer uso de la vista creada anteriormente para obtener la cantidad de usuarios que adeuden más de los que pagaron.

-- 7 Hacer un procedimiento almacenado que permita dar de alta un nuevo curso. Debe recibir todos los valores necesarios 
-- para poder insertar un nuevo registro.

-- 8 Hacer un procedimiento almacenado que permita modificar porcentualmente el Costo de Cursada de todos los cursos.
--  El procedimiento debe recibir un valor numérico que representa el valor a aumentar porcentualmente.
--   Por ejemplo, si recibe un 60. Debe aumentar un 60% todos los costos.

-- 9 Hacer un procedimiento almacenado llamado SP_PagarInscripcion que a partir de un IDInscripcion permita hacer un pago de la inscripción. 
-- El pago puede ser menor al costo de la inscripción o bien el total del mismo. El sistema no debe permitir que el usuario pueda abonar más 
-- dinero para una inscripción que el costo de la misma. Se debe registrar en la tabla de pagos con la información que corresponda.

-- 10 Hacer un procedimiento almacenado llamado SP_InscribirUsuario que reciba un IDUsuario y un IDCurso y realice la inscripción 
-- a dicho curso de ese usuario. El procedimiento debe realizar las siguientes comprobaciones:
-- - El usuario no debe registrar deuda para poder inscribirse.
-- - El usuario debe ser mayor de edad si el curso requiere esa condición.

-- En caso que estas comprobaciones sean satisfechas entonces registrar la inscripción. Determinar el costo de la inscripción 
-- al valor actual del curso. Si alguna comprobación no se cumple, indicarlo con un mensaje de error correspondiente.



