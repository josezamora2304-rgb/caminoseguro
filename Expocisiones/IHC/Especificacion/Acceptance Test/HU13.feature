Feature: Consejos personalizados de seguridad
  Como estudiante,
  quiero recibir recomendaciones personalizadas según mis horarios y rutas,
  para prevenir situaciones de riesgo.

  Scenario: Generación automática de consejos
    Given que tengo rutas frecuentes registradas
    When el sistema analiza mis patrones
    Then me muestra consejos adaptados a mis horarios y ubicaciones

    Example:
      | Ruta frecuente           | Horario habitual | Consejo generado                           |
      | Casa → Universidad       | 9:00 p.m.        | “Evita calles con poca iluminación.”       |
      | Universidad → Paradero   | 11:30 p.m.       | “Camina acompañado si es posible.”         |

  Scenario: Visualización de historial de consejos
    Given que quiero revisar mis recomendaciones anteriores
    When accedo a la sección “Consejos recibidos”
    Then veo un listado con fecha, tipo y recomendación

    Example:
      | Fecha       | Tipo de consejo | Recomendación                            |
      | 10/11/2025  | Nocturno        | “Evita usar audífonos en zonas oscuras.” |
      | 09/11/2025  | Ruta frecuente  | “Informa tu llegada a un contacto.”      |
