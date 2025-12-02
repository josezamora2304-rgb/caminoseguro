Feature: Acceso rápido a puntos de ayuda
  Como trabajador nocturno,
  quiero ubicar fácilmente los puntos de ayuda más cercanos,
  para acudir a ellos en caso de emergencia.

  Scenario: Mostrar puntos de ayuda
    Given que estoy en el mapa
    When selecciono “Puntos de ayuda”
    Then se muestran íconos de comisarías, serenazgos y centros de salud cercanos

    Example:
      | Tipo de punto   | Nombre del lugar               | Distancia | Estado  |
      | Comisaría       | Comisaría PNP Miraflores       | 350 m     | Abierto |
      | Serenazgo       | Base de Serenazgo Surquillo     | 500 m     | Activo  |
      | Centro de salud | Posta Médica San Antonio        | 700 m     | Abierto |

  Scenario: Calcular ruta de ayuda
    Given que selecciono un punto de ayuda
    When presiono “Ir”
    Then la app calcula la ruta más rápida y segura hasta ese punto

    Example:
      | Punto seleccionado          | Tipo de vía sugerida | Tiempo estimado | Nivel de seguridad |
      | Comisaría PNP Miraflores    | Av. Arequipa          | 5 min           | Alto               |
      | Posta Médica San Antonio    | Jr. Libertad          | 8 min           | Medio              |
