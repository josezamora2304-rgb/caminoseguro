Feature: Seguimiento de unidades en campo  
  Como autoridad,  
  Quiero ver la ubicación de las unidades activas en un mapa,  
  Para coordinar movimientos y monitorear la cobertura territorial.  


  Scenario: Visualización de unidades activas  
    Given que hay unidades en patrullaje  
    When ingreso al mapa de monitoreo  
    Then se muestran sus ubicaciones actualizadas cada minuto  

    Example:  
      | Unidad  | Estado   | Última actualización | Resultado esperado                                  |
      | U-145   | Activa   | 22:10                | Se muestra en el mapa con su posición actualizada   |
      | U-203   | En ruta  | 22:11                | Icono visible moviéndose según desplazamiento real  |


  Scenario: Filtro por distrito o zona  
    Given que selecciono un filtro geográfico  
    When aplico el criterio  
    Then solo se muestran las unidades del área elegida  

    Example:  
      | Filtro aplicado | Resultado esperado                                       |
      | Distrito: San Miguel | Solo se muestran unidades asignadas a San Miguel      |
      | Zona: Norte          | Aparecen únicamente las unidades dentro de la zona norte |

