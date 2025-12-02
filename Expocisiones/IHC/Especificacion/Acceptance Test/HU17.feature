Feature: Recomendaciones comunitarias entre estudiantes
  Como estudiante,
  quiero poder leer y compartir recomendaciones de otros usuarios universitarios sobre zonas o rutas,
  para aumentar la prevención colectiva.

  Scenario: Ver recomendaciones de otros
    Given que abro la sección “Recomendaciones”
    When selecciono una zona
    Then veo comentarios con fecha, autor y puntuación de utilidad

    Example:
      | Zona             | Autor             | Fecha       | Puntuación | Comentario                                      |
      | Av. Universitaria | Carla R.          | 10/11/2025  | ★★★★☆      | “Eviten pasar por aquí después de las 10 p.m.”  |
      | Plaza Lima Norte  | Diego M.          | 09/11/2025  | ★★★★★      | “Buena iluminación, hay patrullaje constante.”  |

  Scenario: Publicar recomendación propia
    Given que completé una ruta
    When escribo una sugerencia y presiono “Publicar”
    Then el sistema la muestra junto con las de otros estudiantes

    Example:
      | Ruta                   | Autor       | Fecha       | Comentario                                      |
      | Av. Colonial - UNI      | Fernanda T. | 11/11/2025  | “Zona tranquila antes de las 9 p.m.”            |
      | Óvalo Naranjal - Canto Rey | Luis P.  | 11/11/2025  | “Evitar caminar solo, hay zonas sin cámaras.”   |
