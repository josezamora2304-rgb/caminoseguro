Feature: Generar reportes estadísticos mensuales  
  Como autoridad,  
  Quiero generar informes mensuales de incidentes,  
  Para evaluar resultados y tomar decisiones de seguridad pública.  

  Scenario: Selección de periodo de análisis  
    Given que ingreso al módulo de reportes  
    When elijo el mes deseado  
    Then se genera un resumen con número de casos por tipo  

    Example:  
      | Mes seleccionado | Tipo de casos registrados | Total de casos |
      | Enero 2025       | Robos, accidentes, emergencias médicas | 124 |
      | Febrero 2025     | Robos, incendios, disturbios           | 97  |


  Scenario: Exportar informe PDF o Excel  
    Given que visualizo el reporte  
    When presiono “Exportar”  
    Then el sistema descarga el archivo con el formato seleccionado  

    Example:  
      | Formato seleccionado | Nombre del archivo                     | Resultado esperado                    |
      | PDF                  | Reporte_Enero_2025.pdf                 | Archivo PDF descargado correctamente  |
      | Excel                | Reporte_Enero_2025.xlsx                | Archivo Excel descargado correctamente |
