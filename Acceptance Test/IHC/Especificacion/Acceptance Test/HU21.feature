Feature: Comentar en reportes de otros usuarios
  Como trabajador nocturno,
  Quiero poder comentar en los reportes de otros usuarios,
  Para aportar información adicional o confirmar lo observado.

  Scenario: Agregar comentario
    Given que el trabajador visualiza el reporte
    When escribe un comentario y presiona “Enviar”
    Then el sistema guarda el comentario asociado al reporte

    Examples:
      | Usuario     | Comentario                       | Resultado esperado              |
      | Juan Pérez  | “Yo también vi el incidente.”    | Comentario guardado correctamente |
      | Rosa Díaz   | “Fue cerca de la puerta 3.”      | Comentario guardado correctamente |

  Scenario: Confirmar publicación
    Given que el comentario fue enviado
    When el sistema lo recibe
    Then muestra un mensaje de confirmación

    Examples:
      | Mensaje mostrado              |
      | "Comentario publicado con éxito." |
      | "Tu comentario ha sido agregado." |
