Feature: Validación de reportes falsos  
  Como autoridad,  
  Quiero marcar reportes ciudadanos como falsos cuando se detecte información errónea,  
  Para mantener la integridad del sistema.  


  Scenario: Marcar reporte como falso  
    Given que verifico un reporte  
    When determino que no fue real  
    Then lo marco como “falso” y se excluye del mapa público  

    Example:  
      | ID Reporte | Motivo de falsedad       | Resultado esperado                      |
      | RPT-2345   | Información inventada    | Reporte marcado como falso y oculto     |
      | RPT-2899   | Ubicación incorrecta     | Reporte eliminado del mapa público      |


  Scenario: Registro de acción correctiva  
    Given que un caso fue marcado como falso  
    When se guarda la acción  
    Then el sistema registra al funcionario que la realizó  

    Example:  
      | ID Reporte | Funcionario responsable | Fecha de acción | Resultado esperado                          |
      | RPT-2345   | Cmdte. Ramírez          | 2025-11-11      | Acción registrada en el historial del caso  |
      | RPT-2899   | Of. Torres              | 2025-11-11      | Registro visible en panel administrativo    |
