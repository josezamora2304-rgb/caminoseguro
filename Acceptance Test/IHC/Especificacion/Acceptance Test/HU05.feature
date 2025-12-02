Feature: Envío de Ubicación Temporal al Amigo
    Como estudiante que viaja solo en transporte público,
    quiero poder compartir mi ubicación en tiempo real por un periodo limitado
    con un amigo o compañero de estudio,
    para que me monitoree mientras llego a mi destino y tener tranquilidad.

Scenario: Inicio y Fin Automático
    Given activó la función “Compartir ubicación” al subir al bus
    When expira el tiempo establecido o el sistema detecta que he llegado al destino
    Then el rastreo se detiene automáticamente, cuidando mi privacidad

Example:
    Entrada:
        - Hora de inicio del viaje: 7:30 a.m.
        - Duración configurada: 45 minutos
        - Destino: Universidad Nacional
    Resultado esperado:
        A las 8:15 a.m. el sistema detecta llegada al destino y detiene el rastreo automáticamente  
        Mensaje en pantalla: “Ubicación compartida finalizada por llegada al destino.”  

---

Scenario: Notificación al Receptor
    Given comparto mi ubicación
    When mi amigo abre el enlace de seguimiento
    Then recibe un mapa interactivo que le permite ver mi progreso sin tener la app instalada

Example:
    Entrada:
        - Enlace generado: https://rutas-seguras.com/ubicacion/fer-zamora  
        - Amigo receptor: Carolina Navarro  
    Resultado esperado:
        Carolina abre el enlace y visualiza un mapa con el movimiento del estudiante en tiempo real  
        Mensaje en pantalla: “Fernando Zamora está en camino. Distancia restante: 1.2 km.”  

---

Scenario: Interrupción Manual
    Given que ya me encuentro seguro
    When presiono el botón “Compartir Ubicación” otra vez en la aplicación
    Then el rastreo finaliza inmediatamente y se notifica al receptor que ya llegué a mi destino

Example:
    Entrada:
        - Rastreo activo desde las 6:50 p.m.  
        - El estudiante presiona “Detener ubicación” a las 7:10 p.m.  
    Resultado esperado:
        El sistema detiene la transmisión en ese instante  
        Mensaje para el amigo: “Tu contacto ha llegado a su destino y ha detenido el seguimiento.”  
