Feature: Notificaciones de zonas seguras cercanas
  Como estudiante,
  quiero recibir notificaciones sobre lugares seguros cercanos (cafeterías, estaciones, casetas),
  para tener puntos de referencia cuando necesite resguardarme.

  Scenario: Sugerencia automática de puntos seguros
    Given que estoy caminando de noche
    When la app detecta lugares con buena iluminación o cámaras
    Then me muestra un aviso con el punto seguro más cercano

    Example:
      | Hora | Tipo de lugar detectado | Notificación mostrada             |
      | 10:30 p.m. | Cafetería iluminada | “Punto seguro cercano: Café Central” |

  Scenario: Detalle de punto seguro
    Given que toco la notificación
    When abro el detalle
    Then la app muestra el nombre, horario y distancia del lugar

    Example:
      | Notificación seleccionada | Nombre del lugar  | Horario       | Distancia |
      | “Punto seguro cercano”    | Caseta Universitaria | 24 horas     | 150 m     |
