Feature: Alerta por Demora Inusual en el Trayecto Nocturno
    Como trabajador nocturno que usa la misma ruta para ir a trabajar,
    quiero que la aplicación monitoree mi tiempo de viaje y envíe una pre-alerta
    si excede el tiempo promedio en más de un 20%,
    para que mis contactos sean notificados de un posible incidente (detención, asalto o desvío) en la ruta.

Scenario: Trayecto Excedido
    Given mi trayecto promedio es de 40 minutos (y el límite es 48 minutos)
    When llega el minuto 50 de mi viaje y no he llegado al destino
    Then la aplicación envía un mensaje de pre-alerta a mis contactos con mi ubicación

Example:
    Entrada:
        - Hora de salida: 10:00 p.m.  
        - Tiempo promedio: 40 minutos  
        - Tiempo actual de viaje: 50 minutos (supera el límite de 48 min)  
        - Contactos de emergencia: Juan y Carla  
    Resultado esperado:
        - Se activa la pre-alerta automáticamente  
        - Mensaje enviado: “⚠️ Posible demora detectada en tu ruta habitual. Última ubicación: Av. Colonial - Callao.”  
        - Los contactos reciben el enlace para visualizar la ubicación en tiempo real  

---

Scenario: Cancelación por Usuario
    Given la pre-alerta está activa
    When abro la aplicación y pulso el botón “Detener pre-alerta”
    Then la pre-alerta se detiene, el tiempo límite se reajusta por 15 minutos adicionales
    y se permite enviar un mensaje a mis contactos explicando la situación

Example:
    Entrada:
        - Pre-alerta activa desde las 11:00 p.m.  
        - Usuario presiona “Detener pre-alerta” a las 11:05 p.m.  
        - Mensaje opcional: “Todo bien, el bus se retrasó por tráfico.”  
    Resultado esperado:
        - La alerta se cancela correctamente  
        - Nuevo límite de viaje: +15 minutos (hasta 11:20 p.m.)  
        - Contactos reciben el mensaje aclarando la situación  
