Feature: Calificar la precisión de un reporte  
  Como trabajador nocturno,  
  Quiero valorar si un reporte fue útil o preciso,  
  Para ayudar a mejorar la calidad de la información.  


  Scenario: Calificar reporte  
    Given que el trabajador lee un reporte  
    When selecciona “útil” o “no útil”  
    Then el sistema registra la valoración  

    Example:  
      | ID Reporte | Opción seleccionada | Resultado esperado                     |
      | REP-101    | Útil                | Valoración registrada correctamente     |
      | REP-102    | No útil             | Se almacena como opinión negativa       |


  Scenario: Confirmación  
    Given que la valoración fue enviada  
    When el sistema la guarda  
    Then muestra un mensaje de confirmación  

    Example:  
      | Acción del usuario | Mensaje mostrado             | Resultado esperado                  |
      | Enviar valoración  | “Tu opinión ha sido guardada” | Confirmación visible al trabajador   |


  Scenario: Mostrar porcentaje de utilidad  
    Given que varios usuarios calificaron un reporte  
    When otro usuario lo abre  
    Then el sistema muestra el porcentaje de utilidad  

    Example:  
      | ID Reporte | Valoraciones útiles | Valoraciones totales | Porcentaje mostrado |
      | REP-101    | 8                   | 10                   | 80%                 |
      | REP-102    | 3                   | 6                    | 50%                 |
