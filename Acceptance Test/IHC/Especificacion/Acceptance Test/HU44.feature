Feature: Enviar notificación pública a los ciudadanos  
  Como autoridad,  
  Quiero enviar mensajes preventivos o comunicados masivos,  
  Para informar a la ciudadanía sobre medidas de seguridad.  


  Scenario: Redacción de comunicado  
    Given que accedo al módulo de difusión  
    When escribo el mensaje  
    Then el sistema permite programar o enviar inmediatamente  

    Example:  
      | Tipo de envío | Mensaje                                      | Acción seleccionada |
      | Preventivo     | "Evite transitar por la Av. Central esta noche." | Enviar ahora         |
      | Comunicado     | "Nueva patrulla activa en zona norte."          | Programar envío      |


  Scenario: Confirmación de entrega  
    Given que el mensaje fue enviado  
    When el sistema procesa la distribución  
    Then se muestra un registro de usuarios que lo recibieron  

    Example:  
      | Mensaje enviado                                | Usuarios alcanzados | Estado      |
      | “Evite transitar por la Av. Central esta noche” | 1,257               | Entregado   |
      | “Nueva patrulla activa en zona norte”           | 980                 | En proceso  |
