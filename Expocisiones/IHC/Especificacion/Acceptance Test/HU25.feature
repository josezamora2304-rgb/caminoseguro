Feature: Verificación de Identidad

  Como trabajador nocturno,
  quiero que la aplicación me permita enviar una "autenticación de identidad" a mis contactos
  utilizando una función de verificación biométrica,
  para demostrar que estoy consciente y que soy yo quien la envía.

  Scenario: Envío con Biometría
    Given activo la función "autenticación"
    When la aplicación me pide escanear mi huella digital o rostro
    Then se adjunta una marca de tiempo y el resultado de la verificación que se envía a mis contactos

    Examples:
      | Acción del usuario             | Resultado esperado                                                      |
      | Escanea su huella correctamente | Se envía confirmación con hora y éxito de autenticación a los contactos |
      | Realiza reconocimiento facial   | Los contactos reciben un mensaje: “Identidad verificada a las 11:45 p.m.” |

  Scenario: Error de Verificación
    Given intento enviar la prueba
    When la verificación facial falla tres veces consecutivas (alguien se hace pasar por mí)
    Then el sistema envía una alerta de "Intento Fallido de Prueba de Autenticación" a mis contactos

    Examples:
      | Acción del usuario             | Resultado esperado                                                              |
      | Falla tres veces la biometría  | Se envía alerta a los contactos: “Intento fallido de autenticación detectado”   |
      | No completa la verificación    | El sistema bloquea el envío e informa intento sospechoso                        |

