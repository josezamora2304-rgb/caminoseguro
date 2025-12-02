Feature: Evaluar sensación de seguridad  
  Como estudiante,  
  Quiero registrar cómo me sentí en cada trayecto (seguro, inseguro, neutral),  
  Para ayudar a mejorar los reportes de la comunidad.  

  Scenario: Encuesta rápida post-trayecto  
    Given que completé una ruta  
    When la app muestra una encuesta de tres opciones  
    Then puedo marcar mi nivel de percepción  

    Example:  
      | Trayecto                      | Opción seleccionada | Resultado esperado                      |
      | De campus a casa              | Seguro              | Registro exitoso del nivel de seguridad |
      | De casa a universidad         | Inseguro            | Se alerta al sistema de zona de riesgo  |
      | De cafetería a biblioteca     | Neutral             | Se guarda como registro informativo     |


  Scenario: Registro en base de datos  
    Given que envío mi respuesta  
    When el sistema la procesa  
    Then se suma al análisis de percepción de seguridad estudiantil  

    Example:  
      | ID de encuesta | Nivel percibido | Resultado esperado                              |
      | ENC-001        | Seguro          | Dato agregado correctamente al reporte mensual  |
      | ENC-002        | Inseguro        | Actualización de mapa de calor de inseguridad   |
      | ENC-003        | Neutral         | Registro clasificado como percepción estándar   |




