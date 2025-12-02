Feature: Registro del estudiante

    Como estudiante, quiero crear una cuenta en el aplicativo para poder acceder a los servicios y al mapa que me muestre las rutas seguras.

Scenario: Creacion de una cuenta 
Given que el estudiante se encuentra en nuestra página de registro,
When completa todos los campos requeridos del formulario(nombre,direccion,correo,edad,etc)y presiona el boton "Registrarse",
Then el sistema creara su cuenta al estudiante y lo llevara ala pantalla de bienvenida para que pueda empezar a usar la app

Example:
Entrada: Nombre: Ana Pérez
Dirección: Lima
Correo: ana@gmail.com
Edad: 21  
Salida: Mensaje “Registro exitoso. ¡Bienvenida, Ana!” y redirección a la pantalla principal


Scenario: Correo electrónico ya registrado o estudiante con antecedentes penales.
Given que el estudiante intenta registrarse con una dirección de correo electrónico o tiene antecedentes penales,
When ingresa dicho correo o el sistema detecta que tiene antecedentes penales y presiona el botón “Registrarse”,
Then el sistema debe mostrar un mensaje indicando el error y mostrando un botón para reintentar inicio de sesión por si se equivocó en algún dato.

Example 1 (correo repetido):
    Entrada: Correo = juan@gmail.com (ya registrado)
    Resultado: “Este correo ya está registrado. Intenta iniciar sesión.”  
    Botón visible: [Iniciar sesión]

Example 2 (antecedentes penales):
    Entrada: Correo = pedro@gmail.com  
    Resultado: “No se puede completar el registro por antecedentes detectados.”  
    Botón visible: [Volver al inicio]


Scenario: Formulario de registro incompleto
Given que el estudiante está en la página de registro ,
When deja uno o más campos obligatorios vacíos y presiona el botón “Registrarse”,
Then el sistema debe impedir el registro y mostrar un mensaje indicando qué campos faltan completar.

Example:
Entrada:
    Nombre: —  
    Dirección: Trujillo  
    Correo: lucia@gmail.com  
    Edad: —  
    Contraseña: lucia123  
    
    Resultado esperado:
    El sistema muestra el mensaje “Faltan completar los campos: Nombre y Edad.”  
    El botón “Registrarse” permanece inactivo hasta completar la información.