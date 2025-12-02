Feature: Función de "Reaseguro Familiar" al Final del Turno

Como trabajador nocturno que genera preocupación en casa,
quiero que la aplicación envíe un mensaje automático y tranquilizador a mi familia cuando desactivo el “Modo Turno Nocturno” al terminar mi jornada,
para confirmar que estoy a salvo y he llegado bien.

Scenario 1: Envío de Mensaje Personalizado

Given llegué a mi centro laboral y el “Modo Turno Nocturno” se desactiva,
When el sistema lo detecta,
Then se envía un mensaje predefinido a los contactos de emergencia designados.

Example:

Situación del usuario		Acción realizada			Resultado esperado
Termina su turno nocturno	Desactiva el “Modo Turno Nocturno”	Su familia recibe un mensaje: “He llegado bien a casa.”
Scenario 2: Confirmación de Disponibilidad

Given el mensaje de confirmación fue enviado,
When han pasado 8 horas,
Then la aplicación me envía una notificación para confirmar si “Ya estoy disponible para tomar llamadas”.

Example:

Situación del usuario	Acción realizada		Resultado esperado
Ya pasaron 8 horas	Recibe notificación del sistema	Usuario confirma si está disponible para recibir llamadas