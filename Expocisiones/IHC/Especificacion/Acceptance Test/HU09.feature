Feature: Modo seguro en campus  
  Como estudiante,  
  Quiero activar un modo especial de seguridad dentro del campus universitario,  
  Para recibir alertas solo cuando salgo del perímetro seguro.  


  Scenario: Detección de perímetro seguro  
    Given que me encuentro dentro del campus  
    When activo el modo seguro  
    Then la app deja de emitir alertas comunes dentro del área delimitada  

    Example:  
      | Ubicación actual     | Estado del modo | Tipo de alerta       | Resultado esperado              |
      | Campus principal     | Activado        | Alertas comunes      | No se muestran alertas          |
      | Biblioteca central   | Activado        | Alertas de tránsito  | No se muestran alertas          |


  Scenario: Salida del perímetro  
    Given que salgo del campus  
    When el GPS detecta que crucé los límites  
    Then el sistema reactiva las funciones de alerta automática  

    Example:  
      | Punto de salida       | Hora de detección | Acción del sistema                        | Estado final   |
      | Puerta universitaria  | 22:15             | Reactivar alertas automáticas             | Activo         |
      | Estacionamiento sur   | 23:05             | Mostrar mensaje “Modo seguro desactivado” | Reactivado     |



