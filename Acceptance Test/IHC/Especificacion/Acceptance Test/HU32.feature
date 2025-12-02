Feature: Modo silencioso de seguridad
  Como trabajador nocturno,
  quiero activar un modo silencioso,
  para enviar alertas discretas en situaciones de peligro sin llamar la atención.

  Scenario: Enviar Alerta Silenciosa
    Given que activo el modo silencioso
    When presiono el botón de emergencia
    Then el sistema envía una alerta sin emitir sonidos ni vibraciones

    Examples:
      | Botón presionado   | Ubicación                         | Contactos de emergencia       | Resultado esperado                                                                 |
      | Botón de emergencia | Calle Falsa 123, Lima            | Andrea y Luis                 | Alerta enviada sin sonido ni vibración; contactos reciben mensaje con ubicación   |
      | Botón de emergencia | Av. Universitaria con Av. Venezuela | Carlos y Ana                 | Alerta enviada sin sonido ni vibración; mensaje de emergencia enviado a contactos |

  Scenario: Enviar Alerta Normal
    Given que desactivo el modo silencioso
    When presiono el botón de emergencia
    Then la app emite sonidos y vibraciones para llamar la atención cercana

    Examples:
      | Botón presionado   | Ubicación               | Contactos de emergencia       | Resultado esperado                                                                 |
      | Botón de emergencia | Calle Falsa 123, Lima  | Andrea y Luis                 | Alerta enviada con sonido y vibración; contactos reciben mensaje de emergencia     |
      | Botón de emergencia | Av. Universitaria 500   | Carlos y Ana                  | Alerta enviada con sonido y vibración; mensaje recibido por contactos             |
