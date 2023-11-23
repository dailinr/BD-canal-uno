# BD-canal-uno
Diseño de una base de datos inspirada en la página del Canal 1. Usando el lenguaje PostgreSQL.

# Requisitos de almacenamiento 
1.	Se debe almacenar en cada Noticia: el título, imagen de portada(O), la fecha y hora de publicación, el contenido del artículo, Archivos de multimedia relacionados(O), persona que escribió el articulo o de donde fue tomada la información.
   
2.	En cada noticia se debe almacenar la categoría a la que pertenece (Nacional, Bogotá, mundo, Deportes, Economía, Empresas, 1Opina, Política)
   
3.	Se debe almacenar en cada artículo de entretenimiento: el título, la fecha y hora de publicación, Imagen de portada(O), el contenido del artículo, Archivos de multimedia relacionados(O), persona que escribió el articulo o de donde fue tomada la información.

4.	En cada artículo de entretenimiento se debe almacenar su categoría (Entretenimiento, Virales, Ideas útiles y Estilo de vida).

5.	De cada artículo se debe guardar los temas relacionados (como palabras claves)

6.	Se debe almacenar en cada programa: el nombre, descripción corta, imagen de portada, sinopsis del programa(O).

7.	Se debe almacenar de los programas que contienen episodios, su título y el link.

8.	Se deben almacenar reportes de señal, indicando los siguientes datos del Usuario: Nombre y apellido, identificación, Correo electrónico, Teléfono.

9.	Se debe registrar también estos datos de la falla a reportar: Fecha, hora, Dirección, Departamento, Ciudad, si es Provincia-Municipio-Vereda(O). Si la falla fue en tv o en internet, y si fue en tv guardar el Tipo de señal (Análoga, TDT, Cable) (O), Tipo de antena(O), Tipo de falla(O), Descripción de la falla(O) o comentarios adicionales(O).

10.	Se deben almacenar videos, especificando: Titulo, Descripción del video, Fecha y hora de publicación, Persona que subió el video o de donde fue tomado, Hashtags (programa al que pertenece).

11.	Se deben almacenar la fecha y la hora en que un usuario visualiza los diferentes artículos, videos, programas, etc.

12.	Se deben almacenar por cada video: enlace al video, link relacionado a su artículo (Si tiene), una reseña (explicación corta).

13.	Se debe almacenar los contenidos de programación especificando, el título del programa, su horario, si contiene subtítulos closed caption (CC) o no, si tiene señal en vivo o solo es accesible desde tv y una reseña de este(O).

14.	Se debe almacenar las redes sociales del canal especificando el nombre (WhatsApp, Facebook, Twitter, Instagram, YouTube) y el link de cada página.

15.	Se debe almacenar cada uno de los correos que el canal le ofrece al usuario como medio de contacto.

16.	Se deben almacenar los números de teléfono que ofrece la página como línea de atención al cliente

17.	En un espacio de sugerencias y/o comentarios para el canal, se debe almacenar estos datos del usuario: nombre y apellido, edad, correo, país. Además, el programa al cual va dirigido y el comentario.

18.	En cada sección de Stories, se deben almacenar las imágenes, la descripción y fuente de donde se tomaron cada una de las imágenes.

19.	Se debe almacenar las visualizaciones cada usuario (indicando fecha y hora) de a las diferentes mascotas registradas en la plataforma. Por cada registro se debe almacenar el tipo de mascota (perro o gato), la categoría o motivo del registro (“estoy perdido” o “busco mi hogar”), nombre de la mascota, ciudad (Bogotá, Medellín, Cartagena, Cali, barranquilla o alrededores de Bogotá), la Zona (norte, sur, oriente, occidente, centro), fecha de la última vez visto, número de contacto, correo electrónico, la descripción y foto de la mascota.

20.	En la categoría "1 Opina" por cada artículo se debe almacenar el título, fecha y hora de publicación, el contenido, temas relacionados. También el nombre y apellido del autor y su ocupación.


# Consultas

1.	¿Cuáles programas son los más vistos?

2.	¿Cuáles programas puedes ver los fines de semana?

3.	Nombre y correo del usuario con mayor edad

4.	¿Qué categoría es la más vista?

5.	¿Cuál es la cantidad de vistas que ha tenido el video más viral?

6.	¿Cuántos reportes de señal se han registrado en total?

7.	¿Qué tipo de reporte de señal es más común?

8.	¿Qué programas son solo accesibles desde la tv? 

9.	¿Cuál es el programa con mayores sugerencias?

10.	¿Qué tipo de mascotas es la más común entre los usuarios?

11.	¿Cuál es la duración promedio de los programas?

12.	¿Qué programas se transmitirán los jueves en la mañana?

13.	¿Qué programas tienen una duración mayor a una hora?

14.	¿Cuál es el articulo más visto de la categoría deportes?

15.	Mostrar las noticias más recientes 

16.	¿Cuál es el nombre del programa que se estará transmitiendo mañana después de las 12 pm?

17.	Articulo con mayor cantidad de visualizaciones en el último mes

18.	¿Cuáles son los nombres de los 3 primeros videos destacados?

19.	¿Cuál es el programa que tiene menos visualizaciones por los usuarios?

20.	¿Cuál fue la primera publicación de noticias de la categoría mundo?

