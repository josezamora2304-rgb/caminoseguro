Feature: Programar patrullajes preventivos
  Como autoridad,
  Quiero crear rutas y horarios de patrullaje preventivo,
  Para reforzar la vigilancia en zonas críticas.

  Scenario: Crear ruta de patrullaje
    Given que estoy en el módulo de rutas
    When selecciono los puntos del recorrido
    Then el sistema guarda la ruta con fecha y hora programada

    Examples:
      | Ruta        | Puntos seleccionados           | Fecha y hora programada   | Resultado esperado                |
      | Ruta 1      | Plaza Central - Av. Lima       | 12/11/2025 22:00          | Ruta guardada correctamente       |
      | Ruta 2      | Parque Norte - Calle Los Olivos| 13/11/2025 19:30          | Ruta guardada correctamente       |

  Scenario: Notificación a unidades asignadas
    Given que la ruta fue creada
    When llega la hora de inicio
    Then la unidad recibe la notificación de salida

    Examples:
      | Unidad | Hora de inicio | Mensaje mostrado                    |
      | U-102  | 22:00          | "Inicio de patrullaje programado."  |
      | U-205  | 19:30          | "Dirígete a tu ruta asignada."      |
