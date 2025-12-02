Feature: Recomendaciones automáticas de seguridad

  Como trabajador nocturno,
  quiero recibir recomendaciones personalizadas antes de iniciar mi ruta,
  para reducir los riesgos durante mis desplazamientos nocturnos.

  Scenario: Generar Consejos Previos a la Ruta
    Given que ingreso una ruta nocturna
    When presiono “Iniciar camino”
    Then el sistema muestra consejos de seguridad como “Evita zonas con poca iluminación”

    Examples:
      | Acción del usuario           | Resultado esperado                                                          |
      | Presiona “Iniciar camino”    | Se muestran consejos de seguridad como “No uses el celular mientras caminas” |
      | Modifica la ruta ingresada   | El sistema actualiza las recomendaciones según la nueva zona seleccionada     |

  Scenario: Alerta Zona de Riesgo Horaria
    Given que es una hora de alto riesgo
    When intento iniciar una ruta
    Then el sistema me advierte mediante una notificación y ofrece alternativas más seguras

    Examples:
      | Condición detectada          | Resultado esperado                                                        |
      | Ruta iniciada a las 12:30 a.m.| Aparece alerta: “Zona con alto riesgo a esta hora. Se recomienda otra vía.” |
      | Usuario acepta sugerencia     | Se muestra la nueva ruta más segura en el mapa                             |

