Feature: Función de Llamada Rápida a la Central

Como trabajador nocturno de una empresa que cuenta con una central de emergencias,
quiero tener un botón de “Llamada a Central” visible y accesible,
para poder comunicarme con mi supervisor directamente en lugar de solo enviar una alerta pasiva.

Scenario: Llamada Directa

Given me siento inseguro y necesito hablar con mi central,
When presiono el botón de “Llamada a Central”,
Then se inicia una llamada telefónica directa al número preestablecido de mi supervisor o central de monitoreo.

Example:

| Situación del usuario	| Acción realizada		| Resultado esperado
| Se siente en peligro	| Presiona “Llamada a Central”	| Se inicia llamada directa con la central
Scenario: Mensaje de Voz Automatizado

Given no puedo hablar,
When mantengo presionado el botón por 3 segundos,
Then la aplicación reproduce un mensaje pregrabado a la central diciendo “Emergencia, revisar ubicación de [nombre del usuario]”.

Example:

| Situación del usuario	| Acción realizada			| Resultado esperado
| No puede hablar	| Mantiene presionado 3 segundos	| Se envía mensaje de voz automático con nombre y ubicación

