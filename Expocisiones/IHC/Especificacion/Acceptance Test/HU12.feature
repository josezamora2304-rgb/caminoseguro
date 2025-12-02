Feature: Reportar incidente dentro del campus  
  Como estudiante,  
  Quiero poder reportar incidentes leves dentro del campus,  
  Para que el área de seguridad universitaria esté informada.  


  Scenario: Enviar reporte interno  
    Given que noto un incidente dentro del campus  
    When selecciono “Reportar incidente interno”  
    Then el sistema envía el aviso directamente al panel universitario  

    Example:  
      | Tipo de incidente | Ubicación específica    | Descripción breve                    | Estado del envío |
      | Alumbrado dañado   | Pabellón B, pasillo 2  | Foco sin luz cerca del aula 204      | Enviado           |
      | Objeto sospechoso  | Entrada principal      | Mochila abandonada junto al banco    | Enviado           |


  Scenario: Confirmación de recepción  
    Given que el reporte fue enviado  
    When el área de seguridad lo recibe  
    Then la app me notifica que el caso está siendo revisado  

    Example:  
      | ID Reporte | Fecha y hora       | Mensaje de confirmación                         | Estado actual     |
      | #INC-1023  | 11/11/2025 20:15  | “Tu reporte fue recibido y está en revisión.”    | En revisión       |
      | #INC-1024  | 11/11/2025 20:25  | “El área de seguridad ha tomado conocimiento.”   | Revisado inicial  |
