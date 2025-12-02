Feature: Coordinación interinstitucional
  Como autoridad,
  quiero compartir reportes relevantes con otras instituciones (policía, serenazgo, bomberos),
  para coordinar respuestas conjuntas.

  Scenario: Enviar reporte a institución externa
    Given que visualizo un caso crítico
    When selecciono “Compartir con entidad”
    Then el sistema envía la información al contacto designado

    Example:
      | Tipo de incidente | Institución receptora | Medio de envío | Estado del envío |
      | Asalto            | Policía Nacional      | Canal seguro API | Enviado          |
      | Incendio           | Bomberos Voluntarios  | Correo institucional | Enviado      |

  Scenario: Confirmación de recepción
    Given que el reporte fue compartido
    When la otra institución confirma
    Then el sistema actualiza el estado como “En coordinación”

    Example:
      | Institución confirmante | Hora de confirmación | Estado actualizado   |
      | Policía Nacional         | 22:15                | En coordinación      |
      | Serenazgo Lima           | 22:20                | En coordinación      |
