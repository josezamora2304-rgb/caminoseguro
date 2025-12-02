Feature: Visualizar los lugares con alta criminalidad

  Como estudiante,
  quiero visualizar en el mapa las zonas con alto índice de criminalidad
  para tomar mis precauciones.

  Scenario: Mostrar mapa con las zonas inseguras
    Given que el estudiante quiere visualizar si el lugar por donde va a caminar es inseguro
    When el estudiante haga click en el botón “Identificar Zona”
    Then el sistema le mostrará los lugares donde se reportaron algún tipo de crimen

    Examples:
      | Acción del usuario          | Resultado esperado                                                     |
      | Presiona “Identificar Zona” | El mapa muestra zonas rojas donde se reportaron delitos recientes      |
      | Amplía el mapa              | Se detallan los nombres de calles y puntos exactos de los incidentes   |

  Scenario: Mostrar los tipos de robos que ocurren en dicha zona
    Given el estudiante quiere tomar sus precauciones
    When pase su mouse por las zonas inseguras identificadas
    Then la plataforma le muestra una breve descripción de los tipos de robos que suelen ocurrir (robo de celular, bolsiqueo, asalto, etc.)

    Examples:
      | Acción del usuario                 | Resultado esperado                                                             |
      | Pasa el mouse por una zona roja    | Se despliega un mensaje: “Robo de celular frecuente en horas punta”            |
      | Clic en un punto de incidente      | Se muestra información detallada con fecha, hora y tipo de robo reportado      |
