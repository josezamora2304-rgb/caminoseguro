Feature: Enviar respuesta a un reporte ciudadano
  Como autoridad,
  quiero responder a los reportes ciudadanos,
  para informar que el caso fue atendido.

  Scenario: Revisar reporte
    Given que la autoridad visualiza un reporte
    When lo abre
    Then puede visualizar y leer la hora, lugar y descripción

    Examples:
      | Reporte ciudadano                          | Hora       | Lugar                  | Descripción                     | Resultado esperado                                                   |
      | Robo en tienda de esquina                  | 14:00      | Av. San Martín 123     | Persona robó mercancía          | La autoridad puede ver hora, lugar y descripción completos          |
      | Pelea callejera                            | 22:30      | Jr. Lima 456           | Dos personas peleando           | La autoridad puede ver hora, lugar y descripción completos          |

  Scenario: Enviar respuesta
    Given que la autoridad ha verificado el incidente
    When escribe una respuesta al usuario
    Then el sistema la envía al usuario que reportó

    Examples:
      | Reporte ciudadano          | Respuesta autoridad                             | Resultado esperado                                                   |
      | Robo en tienda de esquina  | "El caso ha sido atendido, patrulla en camino." | Usuario recibe mensaje de respuesta; sistema registra envío        |
      | Pelea callejera            | "Se ha enviado unidad de patrulla al lugar."    | Usuario recibe mensaje de respuesta; sistema registra envío        |

