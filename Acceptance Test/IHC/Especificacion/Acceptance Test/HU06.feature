Feature: Historial Personal de Alertas y Reportes

  Como estudiante,
  quiero poder acceder a un historial de todas mis alertas enviadas y reportes creados,
  para tener un registro personal de mis incidentes de seguridad para fines de análisis o reporte formal.

  Scenario: Revisión de Historial
    Given accedo a la sección "Mi Historial de Seguridad"
    When le doy click a esta sección
    Then veo una lista cronológica de todas mis alertas y reportes, incluyendo la fecha, hora, ubicación y tipo de incidente

    Examples:
      | Acción del usuario                | Resultado esperado                                                                 |
      | Ingresa a "Mi Historial"          | Se muestra una lista de alertas con fecha, hora, tipo y ubicación de cada incidente |
      | Selecciona un reporte específico  | Se abre el detalle completo del incidente seleccionado                              |

  Scenario: Exportación de Datos
    Given que necesito presentar un reporte a las autoridades
    When presiono el botón de "Exportar Historial"
    Then la aplicación genera un archivo PDF con todos los reportes que realicé de forma cronológica

    Examples:
      | Acción del usuario            | Resultado esperado                                                  |
      | Presiona "Exportar Historial" | Se descarga un archivo PDF con todos los reportes en orden cronológico |
      | Revisa el archivo PDF         | El documento muestra datos de fecha, tipo y ubicación de cada alerta   |
