Feature: Función de “Reporte rápido” de zonas inseguras
  Como trabajador nocturno,
  quiero poder reportar de forma rápida una zona insegura desde el mapa,
  para advertir a otros usuarios y evitar que pasen por lugares peligrosos.

  Scenario: Registrar Reporte de Zona Insegura
    Given que estoy en el mapa
    When presiono el botón de reporte
    Then el sistema debe registrar mi ubicación y mostrar un formulario breve para confirmar el reporte

    Example:
      | Ubicación actual     | Acción realizada      | Resultado esperado                          |
      | Av. Colonial 5600    | Presionar “Reportar”  | Se abre formulario con coordenadas cargadas |

  Scenario: Alerta de Reporte Existente y Reciente
    Given que ya he enviado un reporte
    When intento registrar otro en la misma zona
    Then el sistema me muestra una alerta indicando que ya existe un reporte reciente

    Example:
      | Zona reportada     | Tiempo transcurrido | Mensaje mostrado                     |
      | Av. Venezuela 4300 | 5 minutos           | “Ya existe un reporte reciente aquí” |
