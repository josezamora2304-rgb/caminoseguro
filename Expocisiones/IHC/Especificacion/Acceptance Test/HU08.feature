Feature: Recordatorio de rutas frecuentes
  Como estudiante,
  quiero que la app guarde mis rutas más usadas (como de casa a la universidad),
  para poder acceder a ellas rápidamente sin tener que volver a configurarlas.

  Scenario: Guardar ruta frecuente
    Given que he completado un recorrido
    When selecciono la opción “Guardar ruta”
    Then la aplicación la almacena con un nombre personalizado

    Example:
      | Ruta recorrida              | Acción realizada      | Resultado esperado                   |
      | Casa → Universidad Nacional | Guardar ruta          | Ruta guardada como “Ruta a la UNI”   |

  Scenario: Acceder a ruta guardada
    Given que deseo iniciar un nuevo recorrido
    When abro la sección “Mis rutas guardadas”
    Then puedo seleccionar una ruta y comenzar el seguimiento inmediato

    Example:
      | Ruta guardada     | Acción realizada        | Resultado esperado                    |
      | Ruta a la UNI     | Seleccionar y confirmar | Se inicia seguimiento automáticamente |
