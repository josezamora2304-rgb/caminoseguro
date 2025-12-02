Feature: Alerta de Batería Crítica para Contactos

Como estudiante que depende de su móvil para emergencias,
quiero que la aplicación envíe una notificación automática a mis contactos de emergencia cuando mi batería esté críticamente baja,
para que sepan mi última ubicación y puedan contactarme antes de que el móvil se apague.

Scenario: Notificación Preventiva

Given la batería de mi móvil desciende al 15%,
When estoy en una zona considerada de "Riesgo Medio",
Then la aplicación envía un mensaje de “Batería baja. Mi última ubicación conocida es [coordenadas]” a mis contactos de emergencia.

Example:

| Nivel de batería	| Zona actual	| Acción del sistema
| 15%			| Riesgo Medio	| Envío automático de ubicación a los contactos registrados
Scenario: Silencio de la Alerta

Given recibo la notificación de batería baja,
When presiono el botón de “Estoy Seguro” en la ventana emergente,
Then se evita que se envíe la notificación a mis contactos, asumiendo que estoy a salvo en un lugar con cargador.

Example:

| Notificación recibida	| Acción del usuario	| Resultado
| Batería 15%		| Pulsa “Estoy Seguro”	| No se envía alerta a contactos