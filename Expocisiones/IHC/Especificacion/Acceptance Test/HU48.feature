Feature: Reporte de eficacia operativa
  Como autoridad,
  quiero medir el tiempo promedio de respuesta ante los incidentes,
  para mejorar la eficiencia operativa.

  Scenario: Cálculo de tiempo promedio
    Given que existen casos atendidos
    When ejecuto el análisis
    Then el sistema calcula el promedio entre alerta y atención

    Examples:
      | Casos atendidos                              | Resultado esperado                                       |
      | Caso 1: Alerta 14:00, Atención 14:10        | Tiempo promedio: 10 min                                  |
      | Caso 2: Alerta 15:30, Atención 15:50        | Tiempo promedio: 20 min                                  |
      | Caso 3: Alerta 16:15, Atención 16:30        | Tiempo promedio calculado correctamente                 |

  Scenario: Visualización por tipo de caso
    Given que selecciono un tipo de incidente
    When aplico el filtro
    Then se muestran los tiempos de respuesta por categoría

    Examples:
      | Tipo de incidente      | Casos incluidos                               | Resultado esperado                                       |
      | Robo                   | Caso 1, Caso 3                               | Tiempos de respuesta: 10 min, 15 min                     |
      | Accidente de tránsito  | Caso 2                                       | Tiempo de respuesta: 20 min                               |
      | Pelea callejera        | No hay casos                                 | Mensaje: "No hay datos disponibles para esta categoría"  |

