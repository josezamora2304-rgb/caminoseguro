Feature: Recordatorio de salida programada
  Como estudiante,
  quiero recibir un recordatorio antes de salir de casa o del campus en horarios de riesgo,
  para tomar precauciones adicionales.

  Scenario: Configurar alerta programada
    Given que selecciono mis horarios de salida
    When guardo la configuración
    Then el sistema me notificará 15 minutos antes con un mensaje preventivo

    Example:
      | Horario de salida | Mensaje del recordatorio                     | Estado de alerta |
      | 10:00 p.m.         | "Recuerda salir acompañado o avisar tu ruta" | Activado         |
      | 6:30 a.m.          | "Lleva tu linterna y mantén el celular cargado" | Activado     |

  Scenario: Cancelar o posponer alerta
    Given que ya no saldré en ese horario
    When presiono “Posponer”
    Then la alerta se reprograma para la siguiente salida registrada

    Example:
      | Horario original | Acción      | Nuevo horario | Estado |
      | 10:00 p.m.       | Posponer    | 10:30 p.m.    | Reprogramada |
      | 6:30 a.m.        | Cancelar    | —             | Desactivada  |
