Feature: Recibir alertas prioritarias
  Como autoridad,
  quiero recibir alertas en tiempo real sobre zonas críticas,
  para responder rápidamente.

  Scenario: Recepción de alerta
    Given que se genera una notificación grave
    When el sistema la clasifica como prioritaria
    Then la envía inmediatamente a la autoridad

    Examples:
      | Notificación grave                        | Prioridad asignada | Resultado esperado                                                      |
      | Robo con violencia, Av. Brasil 456        | Alta               | Alerta enviada inmediatamente; autoridad recibe notificación en panel   |
      | Incendio en edificio, Jr. Lima 123        | Alta               | Alerta enviada inmediatamente; sistema notifica a todas las unidades cercanas |

  Scenario: Confirmar recepción
    Given que la autoridad recibe la alerta
    When abre la notificación
    Then el sistema marca el caso como “recibido”

    Examples:
      | Alerta recibida                           | Hora apertura | Resultado esperado                                                      |
      | Robo con violencia, Av. Brasil 456        | 14:10        | Caso marcado como “Recibido”; panel indica “Autoridad ha visto la alerta” |
      | Incendio en edificio, Jr. Lima 123        | 15:30        | Caso marcado como “Recibido”; notificación eliminada del listado de pendientes |
