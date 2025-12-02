Feature: Gestión de usuarios del sistema  
  Como autoridad principal,  
  Quiero gestionar los permisos de acceso de otros funcionarios,  
  Para controlar quién puede visualizar o modificar información sensible.  

  Scenario: Crear nuevo usuario institucional  
    Given que soy administrador  
    When registro un nuevo funcionario  
    Then defino su rol (visualizador, editor, supervisor)  

    Example:  
      | Nombre del funcionario | Rol asignado | Resultado esperado                        |
      | Juan Pérez             | Visualizador | Puede solo consultar reportes e incidentes |
      | María Gómez            | Editor       | Puede registrar y actualizar casos         |
      | Luis Rojas             | Supervisor   | Puede aprobar, editar y generar reportes   |


  Scenario: Revocar acceso  
    Given que un funcionario deja de pertenecer a la institución  
    When presiono “Revocar acceso”  
    Then su cuenta queda desactivada  

    Example:  
      | Nombre del funcionario | Motivo de revocación           | Resultado esperado                 |
      | Ana Torres             | Fin de contrato                | Acceso deshabilitado inmediatamente |
      | Carlos Díaz            | Cambio de institución           | Cuenta marcada como inactiva        |
