Feature: Aviso automático al entrar a zonas de riesgo
  Como estudiante,
  quiero que la app me alerte automáticamente cuando estoy por ingresar a una zona insegura,
  para poder cambiar mi ruta a tiempo.

  Scenario: Detección de ingreso a zona roja
    Given que me acerco a una zona marcada como riesgosa
    When el GPS detecta proximidad
    Then el sistema muestra una alerta visual y sonora

    Example:
      | Zona detectada     | Distancia a la zona | Tipo de alerta        | Estado de la app |
      | Av. Central - Lima | 50 metros           | Visual y sonora       | Alerta activa    |
      | Jr. Unión - Callao | 30 metros           | Sonora (prioritaria)  | Alerta activa    |

  Scenario: Recalcular ruta
    Given que acepto la advertencia
    When presiono “Cambiar ruta”
    Then la app calcula una alternativa más segura

    Example:
      | Zona evitada        | Nueva ruta sugerida            | Tiempo estimado | Nivel de riesgo |
      | Av. Central - Lima  | Av. Los Jardines -> Av. Norte  | 12 min          | Bajo            |
      | Jr. Unión - Callao  | Av. Guardia Civil -> Av. Lima  | 10 min          | Medio-bajo      |
