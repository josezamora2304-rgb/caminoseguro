Feature: Mapa histórico de incidentes resueltos  
  Como autoridad,  
  Quiero visualizar los incidentes que ya fueron resueltos,  
  Para identificar zonas donde la intervención fue efectiva.  


  Scenario: Visualizar casos resueltos  
    Given que selecciono el filtro “resueltos”  
    When aplico la búsqueda  
    Then el mapa muestra los casos con icono verde y fecha de cierre  

    Example:  
      | Filtro aplicado | Resultado en mapa                          |
      | Resueltos       | Muestra íconos verdes con fechas de cierre  |


  Scenario: Consultar detalle histórico  
    Given que hago clic en un marcador  
    When abro el detalle  
    Then se muestran las acciones realizadas y su resultado  

    Example:  
      | ID Caso | Acción realizada           | Resultado mostrado          |
      | INC-205 | Patrullaje y seguimiento   | Caso cerrado exitosamente   |
      | INC-310 | Coordinación con serenazgo | Incidente resuelto sin daños |
