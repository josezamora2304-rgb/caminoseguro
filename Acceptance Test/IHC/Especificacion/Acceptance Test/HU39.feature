Feature: Asignar casos a unidades de patrullaje
  Como autoridad,
  quiero asignar reportes a unidades específicas de patrullaje,
  para coordinar la atención eficiente de cada incidente.

  Scenario: Selección de unidad disponible
    Given que visualizo un reporte
    When selecciono una unidad cercana
    Then el sistema la vincula al caso y envía la notificación

    Examples:
      | Reporte de incidente                  | Unidades disponibles         | Unidad seleccionada | Resultado esperado                                                                                  |
      | Robo en tienda, Av. San Martín 123    | Unidad 5 a 500 m, Unidad 12 a 1 km | Unidad 5          | Sistema asigna Unidad 5; Unidad 5 recibe notificación; panel muestra estado "Asignado a Unidad 5" |

  Scenario: Confirmación de asignación
    Given que la unidad recibe el caso
    When acepta la asignación
    Then el sistema marca el estado como “en atención”

    Examples:
      | Unidad | Hora notificación | Hora aceptación | Resultado esperado                                                                                  |
      | Unidad 5 | 14:05           | 14:06           | Estado del caso cambia a "En atención"; panel muestra "Unidad 5 en camino"; autoridad recibe notificación de aceptación |
