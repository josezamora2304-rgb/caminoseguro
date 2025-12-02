Feature: Visualización de Colegas Cercanos

  Como trabajador nocturno que se siente vulnerable,
  quiero poder visualizar en un mapa la ubicación de mis colegas que están dentro de mi radio de trabajo,
  para saber si hay apoyo cercano en caso de una emergencia o situación sospechosa.

  Scenario: Ubicación Compartida por Rol
    Given mi rol es Trabajador Nocturno y activo la función
    When abro la vista de Colegas Cercanos
    Then solo veo los puntos de otros usuarios que también tienen el rol Trabajador Nocturno

    Examples:
      | Acción del usuario                | Resultado esperado                                                        |
      | Activa la función de colegas      | El mapa muestra solo trabajadores nocturnos en un radio de 500 metros     |
      | Desactiva la función              | El mapa deja de mostrar los puntos de los colegas                         |

  Scenario: Notificación de Encuentro
    Given un colega se acerca a 100 metros de mi ubicación
    When ambos estamos en turno nocturno
    Then la aplicación me notifica discretamente que tengo apoyo cercano

    Examples:
      | Situación detectada                | Resultado esperado                                                        |
      | Otro trabajador se aproxima a 100m | Se recibe una notificación: “Colega cercano detectado en tu zona”         |
      | Ambos confirman turno activo       | El sistema mantiene visible la ubicación mutua durante el tiempo de turno |
