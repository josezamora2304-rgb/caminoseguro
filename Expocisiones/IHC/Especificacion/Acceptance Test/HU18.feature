Feature: Reportar lugar peligroso durante el turno nocturno

  Como trabajador nocturno,
  quiero reportar lugares peligrosos durante mis recorridos,
  para prevenir a otros que transiten de noche.

  Scenario: Enviar reporte
    Given que el trabajador se encuentra en un sitio peligroso
    When seleccione la opción de reportar zona insegura y añade detalles
    Then el sistema guarda el reporte con fecha y hora

    Examples:
      | Acción del usuario                   | Resultado esperado                                                  |
      | Presiona "Reportar zona insegura"    | Se abre un formulario para agregar detalles del lugar               |
      | Envía el reporte con descripción     | El sistema guarda la información con fecha, hora y ubicación exacta |

  Scenario: Confirmación
    Given que el trabajador envió el reporte
    When el sistema lo recibe automáticamente
    Then se muestra un mensaje de confirmación

    Examples:
      | Acción del usuario        | Resultado esperado                                      |
      | Envía el reporte          | Aparece mensaje: "Tu reporte fue recibido correctamente"|
      | Revisa su historial       | El reporte aparece registrado en la lista de incidentes |
