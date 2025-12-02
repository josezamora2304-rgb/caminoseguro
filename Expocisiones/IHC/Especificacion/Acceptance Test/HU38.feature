Feature: Panel de control de incidencias activas
  Como autoridad,
  Quiero visualizar en un panel todas las incidencias reportadas en tiempo real,
  Para monitorear su estado y priorizar la atención.

  Scenario: Visualización en tiempo real
    Given que hay reportes activos
    When abro el panel
    Then se muestran los casos ordenados por hora y prioridad

    Examples:
      | Reporte ID | Hora de reporte | Prioridad | Estado   |
      | RPT-001    | 22:15           | Alta       | Pendiente |
      | RPT-002    | 22:20           | Media      | En proceso |

  Scenario: Actualización automática
    Given que nuevos reportes llegan
    When el sistema los recibe
    Then el panel se actualiza sin recargar la página

    Examples:
      | Nuevo reporte | Hora de llegada | Acción del sistema                    |
      | RPT-003       | 22:25           | Panel actualizado automáticamente     |
      | RPT-004       | 22:27           | Reporte añadido a la lista en tiempo real |
