Feature: Verificación de zonas patrulladas
  Como trabajador nocturno,
  quiero visualizar en el mapa las zonas recientemente patrulladas,
  para sentirme más seguro al transitar por áreas con presencia de seguridad.

  Scenario: Mostrar Zonas Patrulladas
    Given que activo la capa de patrullaje
    When visualizo el mapa
    Then las zonas seguras aparecen resaltadas con un color verde tenue

    Example:
      | Zona           | Último patrullaje | Estado visual |
      | Av. Central    | Hace 2 horas      | Verde tenue   |
      | Parque Norte   | Hace 4 horas      | Verde tenue   |

  Scenario: Actualizar Estado de Patrullaje
    Given que una zona deja de tener patrullaje
    When reviso el mapa
    Then el color de esa área cambia a gris automáticamente después de 24 horas

    Example:
      | Zona             | Último patrullaje | Estado actualizado |
      | Av. Industrial   | Hace 26 horas     | Gris               |
      | Calle Los Olivos | Hace 30 horas     | Gris               |
