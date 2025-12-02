Feature: Alerta silenciosa de emergencia
    Como estudiante,
    quiero activar una alerta de emergencia silenciosa dentro de la aplicación,
    para avisar a mis contactos de confianza y a las autoridades de mi ubicación exacta sin emitir ruidos.

Scenario: Activación y envío silencioso
    Given que el usuario presiona un área oculta o un botón designado por tres segundos
    When la aplicación envía la ubicación GPS a los contactos de emergencia y a los servidores
    Then el teléfono no emite ningún sonido ni vibración fuerte,
    y los contactos reciben un mensaje automático de emergencia con el mapa de ubicación en tiempo real de quien lo comparte

Example:
    Entrada:
        - El estudiante presiona el botón oculto de alerta durante 3 segundos.  
        - Ubicación GPS: Av. Universitaria con Av. Venezuela, Lima.  
        - Contactos de emergencia: Andrea y Luis.  
    Resultado esperado:
        - El teléfono permanece en silencio sin vibrar fuerte.  
        - Los contactos reciben el mensaje:  
          “Alerta de emergencia: [Nombre del estudiante] ha activado una alerta silenciosa.  
          Ver ubicación en tiempo real: https://rutas-seguras.com/ubicacion/alerta.”  
        - El sistema guarda el reporte en los servidores de seguridad.  

---

Scenario: Confirmación de recepción
    Given que la alerta silenciosa fue enviada al centro de monitoreo
    When la autoridad acepta la alerta en su panel virtual
    Then el usuario recibe una notificación o una leve vibración que indica que su alerta fue vista por sus contactos o autoridades

Example:
    Entrada:
        - Alerta enviada a las 10:45 p.m.  
        - Autoridad confirma recepción en el panel a las 10:46 p.m.  
    Resultado esperado:
        - El estudiante siente una vibración leve en el teléfono.  
        - Mensaje en pantalla: “Tu alerta ha sido vista por las autoridades y tus contactos de confianza.”  
        - El panel de monitoreo cambia el estado de la alerta a “Recibida y en seguimiento.”  
