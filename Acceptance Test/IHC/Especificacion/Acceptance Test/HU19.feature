Feature: Activar modo de alerta rápida
  Como trabajador nocturno,
  quiero un botón de alerta rápida para notificar incidentes,
  para que otros y el sistema puedan reaccionar a tiempo.

  Scenario: Activar botón
    Given que el trabajador nota una situación peligrosa
    When presiona el botón SOS con la ubicación activa
    Then se cargará el aviso automáticamente en el sistema

    Example:
      | Situación detectada | Acción realizada    | Resultado esperado                |
      | Robo cercano        | Presionar botón SOS | Aviso cargado en el sistema       |

  Scenario: Confirmar envío
    Given que la alerta fue enviada
    When el sistema la procesa
    Then le da aviso al usuario que la “Alerta fue enviada exitosamente”

    Example:
      | Estado de alerta | Proceso del sistema | Mensaje mostrado                         |
      | Enviada          | Procesada           | "Alerta fue enviada exitosamente"        |

  Scenario: Notificar usuarios cercanos
    Given que otros están en la zona
    When se activa una alerta
    Then reciben una notificación emergente

    Example:
      | Usuarios en zona | Evento activado | Notificación recibida        |
      | 3 trabajadores   | Alerta SOS      | “Alerta en tu zona activa”   |
