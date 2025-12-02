Feature: Visualizar los lugares con alta criminalidad

  Como estudiante,
  quiero visualizar en el mapa las zonas con alto índice de criminalidad
  para tomar mis precauciones.

  Scenario: Mostrar mapa con las zonas inseguras
    Given que el estudiante quiere visualizar si el lugar por donde va a caminar es inseguro
    When el estudiante haga click en el botón “Identificar Zona”
    Then el sistema le mostrará los lugares donde se reportaron algún tipo de crimen

    Examples:
      | Acción del usuario                  | Resultado esperado                                               |
      | Presiona “Identificar Zona”         | El mapa muestra puntos rojos en las zonas con reportes delictivos |
      | Amplía el mapa                      | Se visualizan más detalles de las calles y zonas inseguras        |

  Scenario: Mostrar los tipos de robos que ocurren en dicha zona
    Given el estudiante quiere tomar sus precauciones
    When pase su mouse por las zonas inseguras identificadas
    Then la plataforma le muestra una breve descripción de los tipos de robos que suelen ocurrir (robo de celular, bolsiqueo, asalto, etc.)

    Examples:
      | Acción del usuario                   | Resultado esperado                                                        |
      | Pasa el mouse por una zona insegura  | Se despliega una ventana con los tipos de robos frecuentes en esa área    |
      | Da clic en un punto de crimen        | Se muestra información más detallada del incidente (fecha, tipo, reporte) |
