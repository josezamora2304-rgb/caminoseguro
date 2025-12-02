Feature: Contacto directo con seguridad universitaria
  Como estudiante,
  quiero tener un acceso rápido al número de seguridad de mi universidad,
  para pedir ayuda inmediata en caso de emergencia.

  Scenario: Acceso desde pantalla principal
    Given que estoy en la pantalla de inicio
    When presiono el botón “Seguridad Campus”
    Then se abre la llamada directa al centro de seguridad

    Example:
      | Pantalla actual  | Acción realizada           | Resultado esperado                     |
      | Inicio           | Presionar “Seguridad Campus” | Llamada directa al centro de seguridad |

  Scenario: Fallback a número alternativo
    Given que el número principal no responde
    When el sistema detecta la falla
    Then ofrece contactar automáticamente a serenazgo o policía local

    Example:
      | Estado del número principal | Acción del sistema  | Contacto alternativo sugerido |
      | No disponible               | Activar fallback    | Serenazgo o policía local     |
