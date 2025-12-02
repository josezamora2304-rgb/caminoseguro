Feature: Ver evolución de seguridad por zonas
  Como autoridad,
  Quiero analizar cómo varía el nivel de seguridad de las zonas,
  Para identificar avances o retrocesos.

  Scenario: Seleccionar zona
    Given que la autoridad accede al panel
    When elige una zona
    Then se muestran los datos históricos de reportes

    Examples:
      | Zona             | Reportes históricos mostrados |
      | Centro Urbano    | 25                            |
      | Villa Esperanza  | 12                            |

  Scenario: Mostrar gráfico
    Given que hay registros previos
    When el sistema procesa la información
    Then el sistema genera un gráfico de evolución mensual

    Examples:
      | Zona            | Tipo de gráfico | Periodo mostrado |
      | Centro Urbano   | Línea           | Enero - Octubre  |
      | Villa Esperanza | Barras          | Marzo - Octubre  |
