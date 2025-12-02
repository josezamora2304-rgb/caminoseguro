Feature: Visualizar zonas peligrosas en el distrito  
  Como autoridad,  
  Quiero ver en un mapa las zonas con más reportes de peligro,  
  Para planificar patrullajes.  


  Scenario: Cargar mapa de calor  
    Given que la autoridad abre el panel  
    When carga los datos  
    Then el sistema muestra un mapa de calor donde se resaltan las zonas con mayor cantidad de reportes  

    Example:  
      | Distrito     | Reportes registrados | Resultado esperado                                      |
      | San Miguel    | 25                   | Zona coloreada en rojo intenso                         |
      | Pueblo Libre  | 10                   | Zona en tono naranja indicando nivel medio de peligro  |
      | La Perla      | 3                    | Zona en amarillo con bajo nivel de incidencia          |


  Scenario: Ver detalle de zona  
    Given que la autoridad selecciona un área  
    When hace clic en el marcador  
    Then se muestran los reportes con fecha, hora y descripción  

    Example:  
      | Fecha       | Hora  | Descripción                   | Resultado esperado                      |
      | 10/11/2025  | 22:30 | Robo de celular en parque      | Información visible en panel lateral    |
      | 11/11/2025  | 00:15 | Asalto a transeúnte en avenida | Detalle ampliado con botón “Ver más”    |

