Feature: Ver rutas seguras hacia el trabajo
  Como trabajador nocturno,
  quiero que la app me recomiende rutas seguras hacia mi centro laboral,
  para reducir el riesgo de hurtos.

  Scenario: Ingresar destino
    Given que el trabajador abre la aplicación
    When escribe su destino
    Then el sistema muestra la variedad de rutas disponibles

    Example:
      | Destino            | Resultado esperado                         |
      | Av. La Marina 123  | Muestra 3 rutas con diferentes niveles de seguridad |

  Scenario: Seleccionar Ruta segura
    Given que hay rutas con diferentes niveles de riesgo
    When seleccione “ruta más segura”
    Then se muestra resaltada en el mapa

    Example:
      | Opción seleccionada | Indicador en mapa  |
      | Ruta más segura     | Color verde        |

  Scenario: Alerta de cambio de nivel
    Given que la ruta cambió su nivel de seguridad
    When se detecta un nuevo reporte
    Then el sistema le emitirá una advertencia automáticamente

    Example:
      | Estado anterior | Nuevo estado  | Notificación             |
      | Seguro          | Riesgo medio  | “Tu ruta ha cambiado de nivel de seguridad” |
