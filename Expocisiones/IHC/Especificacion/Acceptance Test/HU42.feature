Feature: Configurar alertas automáticas por zona
  Como autoridad,
  Quiero establecer alertas automáticas para zonas específicas,
  Para ser notificado de inmediato cuando haya un incidente allí.

  Scenario: Definir parámetros de alerta
    Given que configuro una zona
    When guardo el perímetro y tipo de incidente
    Then el sistema activa una notificación asociada

    Examples:
      | Zona             | Tipo de incidente | Acción esperada                                               |
      | Parque Industrial | Robo              | El sistema activa alerta de “Robo” para la zona seleccionada |
      | Mercado Central   | Disturbio         | El sistema guarda alerta y notifica a la central              |

  Scenario: Notificación inmediata de evento
    Given que ocurre un incidente dentro de esa zona
    When el sistema lo registra
    Then se envía automáticamente la alerta configurada

    Examples:
      | Zona             | Incidente reportado  | Resultado esperado                                                  |
      | Parque Industrial | Robo a mano armada  | El sistema envía alerta inmediata a la autoridad correspondiente    |
      | Mercado Central   | Disturbio civil      | Se genera notificación automática a la central de monitoreo         |
