Feature: Integración con cámaras de vigilancia  
  Como autoridad,  
  Quiero vincular el mapa con cámaras de videovigilancia disponibles,  
  Para observar en vivo las zonas donde hay reportes.  


  Scenario: Acceso a cámara vinculada  
    Given que selecciono un punto con cámara  
    When presiono “Ver cámara”  
    Then se abre una transmisión en vivo desde esa ubicación  

    Example:  
      | Ubicación de cámara  | Estado de conexión | Resultado esperado                |
      | Av. La Marina 1020   | En línea           | Se muestra transmisión en vivo    |
      | Parque Central       | En línea           | Imagen en tiempo real visible     |


  Scenario: Ver registro de video reciente  
    Given que la cámara no tiene transmisión activa  
    When selecciono “Ver grabación”  
    Then se reproduce el último video disponible  

    Example:  
      | Ubicación de cámara  | Estado de conexión | Último registro disponible | Resultado esperado                  |
      | Av. Faucett 850      | Sin conexión       | 23:45 del día anterior     | Se reproduce grabación reciente     |
      | Plaza San Miguel     | Sin conexión       | 22:10 del mismo día        | Video reproducido correctamente     |
