Feature: Historial de rutas seguras  
  Como trabajador nocturno,  
  Quiero acceder a mi historial de rutas seguras,  
  Para repetir los trayectos que me generaron mayor confianza.  


  Scenario: Listar Rutas Guardadas  
    Given que he completado rutas previamente  
    When ingreso a “Mis rutas seguras”  
    Then visualizo una lista de trayectos guardados con fecha y hora  

    Example:  
      | Nombre de ruta     | Fecha       | Hora   | Resultado esperado                       |
      | Casa - Trabajo     | 2025-11-05  | 22:10  | Ruta visible en la lista                 |
      | Trabajo - Casa     | 2025-11-06  | 06:25  | Se muestra correctamente con detalles    |


  Scenario: Reutilizar Ruta Guardada  
    Given que selecciono una ruta guardada  
    When presiono “Usar”  
    Then el sistema la carga automáticamente en el mapa  

    Example:  
      | Nombre de ruta     | Acción | Resultado esperado                             |
      | Casa - Trabajo     | Usar   | Ruta cargada en el mapa lista para iniciar     |
      | Trabajo - Casa     | Usar   | Trayecto mostrado con puntos de control previos|
