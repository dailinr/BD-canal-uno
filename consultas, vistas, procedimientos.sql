/* 1.	¿Cuáles programas son los más vistos? */

/* vista para contar las visualizaciones por cada programa */
create view visuazxprograma
as
select count(visualizacionesprograma.idPrograma) as visualizaciones,
		(select nombre
		from programas 
		where visualizacionesprograma.idprograma = programas.idprograma) as nombrePrograma
from visualizacionesprograma
group by visualizacionesprograma.idPrograma;

/* rankeamos los programas mas vistos */
select  ROW_NUMBER() OVER(ORDER BY visualizaciones DESC), nombrePrograma, visualizaciones
from visuazxprograma
where visualizaciones = (select max(visualizaciones)
						from visuazxprograma);

/* 2.	¿Cuáles programas puedes ver los fines de semana? */

/* Vista para obtener la programacion por dia */
create view programacion
as
select horarios.dia as dia, emisiones.idPrograma as idPrograma, 
	horarios.horaInicio as horaInicio, horarios.horaFinalizacion as horaFinalizacion
from emisiones inner join horarios
	on emisiones.idHorario = horarios.idHorario
	
/* mostrar los programas de los dias sabado y domingo */
select pg.nombre, pm.dia, pm.horaInicio
from programacion pm inner join programas pg
	on pm.idPrograma = pg.idPrograma
where pm.dia in('Sabado', 'Domingo');


/* 3. Nombre y correo del usuario con mayor edad */

/* vista para guardar las edades de cada usuario de mayor a menor */
create view rankEdades
as
select ROW_NUMBER() OVER(ORDER BY edad DESC) as l, edad, nombre, correo
from usuarios

/* mostrar correo y nombre del usuario mayor */
select nombre, correo, edad
from rankEdades 
where l=1;

/* 4.	¿Qué categoría es la más vista? */

/* Vista que guarde la cantidad de visualizaciones por cada articulo */
create view visualArticulos
as
select count(idcategoria) as visualizaciones, idcategoria
from visualizacionesarticulo inner join articulos 
	using (idarticulo)
group by idcategoria

/* vista de ranking de visualizaciones por categorias */
create view rankingCtg
as
select (ROW_NUMBER() OVER(ORDER BY visualArticulos.visualizaciones DESC)) as l,
	visualArticulos.visualizaciones as visualizaciones, categorias.nombre as nombre
from visualArticulos inner join categorias
	using(idcategoria)

select visualizaciones, nombre
from rankingCtg
where l=1;


/* 5. ¿Cuál es la cantidad de vista que ha tenido el video más viral? */

/* vista que cuenta las cantidad de visualizaciones por cada video */
create view vistasVideo as
select count(idvideo) as vistas, idvideo as idv
from visualizacionesvideo
group by idvideo;

select vistas, (select titulo from videos where idvideo = idv)
from vistasVideo
order by vistasvideo desc
limit 1;

/* 6.  ¿Cuántos reportes de señal se han registrado en total?*/

/* Vista que cuenta la cantidad total de reportes hechos */
create view cantReportes as
select count(*) as totalReportes
from reportesseñal;

select *
from cantReportes

/* 7.	¿Qué tipo de reporte de señal es más común? */

/* Vista que encuentra el motivo de reporte de señal más común entre los usuarios */
CREATE VIEW señalmascomun
as
SELECT tipofalla, COUNT(*) AS cantidad
FROM ReportesSeñal
WHERE tipofalla is not null
GROUP BY tipofalla
ORDER BY cantidad DESC
LIMIT 1;

select *
from señalmascomun

/* 8. Qué programas son solo accesibles desde la tv?  */

/* Vista q guarda los programas que no tienen formato streaming */
create view progsolotv as
select nombre
from programas 
where streaming = false;

select * 
from progsolotv;

/* 9.	¿Cuál es el programa con mayores sugerencias? */

/* vista que encuentra el idPrograma con más sugerencias recibidas */
create view progMasSugerencias
as
SELECT COUNT(idprograma) AS cantSugerencias, idprograma
FROM sugerencias
GROUP BY idprograma;

select progMasSugerencias.cantSugerencias, programas.nombre as programa
from progMasSugerencias inner join programas using(idprograma)
order by progMasSugerencias.cantSugerencias desc
limit 1;

/* 10. ¿Qué tipo de mascotas es la más común entre los usuarios? */

/* Vista contar las visualizaciones por cada mascota */
create view vistaspormascotas as
select count(V.idMascota) as visualiz, mascotas.tipoMascota
from visualizacionesMascota V
	inner join mascotas using(idMascota)
group by mascotas.tipoMascota

select *
from vistaspormascotas
order by visualiz desc
limit 1;

/* 11.	¿Cuál es la duración promedio de los programas? */

/* Vista que promedia la duracion de todos los programas */
create view duracionPromPrograma as
select avg((H.horafinalizacion - H.horainicio)) as promedio
from emisiones E inner join horarios H
	using(idHorario);

select promedio
from duracionPromPrograma;

/* 12.	¿Qué programas se transmitirán el jueves en la mañana? */
select (select nombre
	   from programas 
	   where idprograma = programacion.idprograma) as programa, dia, horaInicio
from programacion
where dia = 'Jueves' and (horaInicio > '00:00:00' and horaInicio < '12:00:00');

/* 13.	¿Qué programas tienen una duración mayor a una hora? */

/* funcion que devuelve una tabla con los nombre de los programas q demoran más de una hora */
create function programasMayor1hora()
returns table(nomb varchar(150)) as
$CUERPO$
begin
	return query
		(select (select nombre 
				from programas
				where idPrograma = programacion.idPrograma) as nombre
		from programacion
		where (horaFinalizacion - horaInicio) > '01:00:00');
end;
$CUERPO$
Language 'plpgsql';

select * from programasMayor1hora();

/* 14.	¿Cuál es el articulo más vistos de la categoría deportes? */

/* funcion que devuelve el titulo del articulo con más visualizaciones de la categoria deportes */
create function MayorVistoDeportes()
returns table (tit varchar(150)) as
$CUERPO$
begin
	return query
		select (select titulo
				from articulos
				where idcategoria = (select idCategoria
									from categorias
									where nombre = 'deportes')) as tituloArticulo
		from rankingCtg
		order by visualizaciones desc
		limit 1;
end;
$CUERPO$
Language 'plpgsql';

select * from MayorVistoDeportes()

/* 15.	Mostrar las noticias más recientes */

/* funcion que devuelve una tabla con el titulo y la fecha de publicación de los 5 articulos más recientes de tipo 'noticias' */

create function noticiasRecientes()
returns table (tit varchar(150), fechaPub date) as
$CUERPO$
begin
	return query
		(select titulo, fechaPublicacion
		from Articulos
		where  idCategoria in (select idCategoria
							   from categorias
							   where tipoArticulo = 'noticias')
		order by fechaPublicacion desc)
		limit 5;
end;
$CUERPO$
Language 'plpgsql';

select * from noticiasRecientes()

/* 16.	¿Cuál es el nombre del programa que se estará transmitiendo mañana a las 12 pm? */



/* Funcion que devuelve una tabla con el idArticulo y el total de visualizaciones que tiene cada articulo */
create function TotalVisualizacionesArticulos()
returns table (idA int, visualiz bigint) as
$CUERPO$
begin
	return query
		(select idArticulo, count(idArticulo) as visualizaciones
		 from visualizacionesArticulo
		 group by idArticulo);
end;
$CUERPO$
Language 'plpgsql';

/* 17.	Cuál es el articulo más vistos en el último mes */

/* hallamos el articulo que ha tenido mayor visualizaciones en el ultimo mes con una funcion */
create function ArtMasVistoUltimoMes()
returns table (vistas bigint, idArt int) as
$CUERPO$
begin
	return query
		(select count((select idArticulo
					  from visualizacionesArticulo
					  where idArticulo = articulos.idArticulo and fechaVisualizacion between '01/05/2023' and '28/05/2023')) as visualizacion,
		 		idArticulo
		 from articulos
		 group by idArticulo
		order by visualizacion desc
		limit 1);
end;
$CUERPO$
Language 'plpgsql';

select * 
from ArtMasVistoUltimoMes()

/* 18.	¿Cuáles son los nombres de los 3 primeros videos destacados? */

/* Funcion que retorna una tabla con el titulo y el numero de visualizaciones de los 3 videos más destacados */
create function TresVideosDestacados()
returns table (tit varchar(150), vist bigint) as
$CUERPO$
begin
	return query
		select (select titulo
			   from videos 
			   where idVideo = vistasVideo.idv) as tituloVideo, vistas
		from vistasVideo
		order by vistas desc
		limit 3;
		
end;
$CUERPO$
Language 'plpgsql';

select * from TresVideosDestacados()

/* 19.	¿Cuál es el programa que tiene menos visualizaciones por los usuarios? */

/* Funcion que retorna el nombre y la cantidad de visualizaciones del programa menos visto */
create function ProgMenosVistas()
returns table (nom varchar(150), vist bigint) as
$CUERPO$
begin
	return query
		select nombrePrograma, visualizaciones
		from visuazxprograma
		order by visualizaciones asc
		limit 1;	
end;
$CUERPO$
Language 'plpgsql';

select * from ProgMenosVistas()

/* 20.	¿Cuál fue la primera publicación de noticias de la categoría 'mundo' ? */

/* Funcion que recibe por parametros la categoria y el tipo de articulo y retorna el idArticulo perteneciente
a las primera publicacion en dicha categoria */
create function PrimeraPublicPorCategoria(catg varchar(100), tipoC varchar(100))
returns int as
$CUERPO$
declare 
	noticia int;
begin
	noticia := (select idArticulo
			   from articulos
			   where idCategoria = (select idCategoria
								   from categorias
								   where tipoArticulo = tipoC and nombre = catg)
			   order by fechaPublicacion desc)
			   limit 1;
	return 	noticia;
end;
$CUERPO$
Language 'plpgsql';

select (select titulo
	   from articulos
	   where idArticulo = PrimeraPublicPorCategoria('mundo', 'noticias')),
(select fechaPublicacion
	   from articulos
	   where idArticulo = PrimeraPublicPorCategoria('mundo', 'noticias'));

/* procedimiento almacenado para insertar articulos creando un nuevo autor */
create or replace procedure 
insertandoArticulo(idArticulo int, titulo varchar(150), contenidoDelArticulo varchar,
				  temasRelacionados varchar, fechaPublicacion date, horaPublicacion time,
				  fuenteDeInformacion varchar(200), UrlImagenPortada varchar(200), 
				  idCategoria int, idAutor int, ocupacion varchar(200), urlFotoAutor varchar(200),
				  nombreAutor varchar(100), apellidoAutor varchar(100)) as
$CODE$
BEGIN
	RAISE NOTICE 'Insertando autor %', nombreAutor;
	INSERT INTO Autores(idAutor, ocupacion, urlfoto, nombre, apellido)
	VALUES(idAutor, ocupacion, urlFotoAutor, nombreAutor, apellidoAutor);
 	RAISE NOTICE 'Autor % insertado', nombreAutor;
	
	commit;
						
	RAISE NOTICE 'Insertando Articulo %', titulo;
	INSERT INTO Articulos
	VALUES (idArticulo, titulo, contenidoDelArticulo, temasRelacionados, fechaPublicacion, horaPublicacion,
		   fuenteDeInformacion, UrlImagenPortada, idCategoria, idAutor);
 	RAISE NOTICE 'Articulo % insertado', titulo; 
END
$CODE$
LANGUAGE 'plpgsql';


/* Funcion que retorna los registros de las mascotas perdidas */
create function MascotasPerdidas()
returns table (nombre_ varchar(150), cel bigint, ciudad_ varchar(150)) as
$CUERPO$
begin
	return query
		(select nombre, celular, ciudad
		from mascotas
		where categoria = 'Estoy perdido');
end;
$CUERPO$
Language 'plpgsql';

select * from MascotasPerdidas()


call insertandoArticulo(11, 'Un llamado a la verdad y la libertad de prensa, el legado de Jaime Garzón',
'Las declaraciones de Mancuso ante la JEP sobre el asesinato del humorista Jaime Garzón y quienes dieron la orden, han puesto de relieve una de sus sabias frases: “El periodismo no debería ser el perro faldero del poder, debería ser su ladrador“. En su acusación, el exlíder paramilitar nombra varias empresas incluyendo medios de comunicación que presuntamente apoyaron a las autodefensas en Colombia. Esta cita nos recuerda el legado de Jaime Garzón, su lucha por la libertad y la responsabilidad ética que tenemos como periodistas.
Garzón, un comediante colombiano asesinado por ser un apasionado de la libertad, sigue siendo un referente para muchos, incluso después de 24 años de su trágica muerte, ya que todavía tenemos interrogantes sin resolver. A pesar de las amenazas y el peligro que enfrentó, Garzón nunca se amedrentó y continuó defendiendo la verdad y la justicia a través de su trabajo.
Desde el inicio de mi formación como periodista, Jaime Garzón ha sido uno de mis pilares éticos. Admiro su capacidad para informar sin miedo a incomodar. Una de sus frases más conocidas, “si ustedes los jóvenes no asumen la dirección de su propio país, nadie va a venir a salvarlo. ¡Nadie!“, sigue resonando en nuestros corazones. Garzón continúa vivo a través de sus ideas y las ideas de libertad en las que muchos jóvenes nos vemos reflejados.',
'asesinato Jaime Garzón, Salvatore Mancuso', '26/05/2023', '17:22:00', 'Redaccion canal 1',
'https://images.canal1.com.co/wp-content/uploads/2023/05/16122636/Portdada-de-WordPress-7-768x384.jpg.webp',
11, 6, 'Periodista SEO', 'https://images.canal1.com.co/wp-content/uploads/2023/05/16123417/1626482357376-300x300.jpeg', 
'Nicolas', 'Combita');


/* procedimiento almacenado para insertar un nuevo video */
create or replace procedure 
insertandoVideo(idVideo int, horaDePublicacion time, fechaDePublicacion date, 
				  linkArticulo varchar(200), titulo varchar(200), 
				  enlace varchar(200), Hastag varchar(100), descripcion varchar(300),
			   idArchivo int, fuente varchar(200), idArticulo int) as
$CODE$
BEGIN
	RAISE NOTICE 'Insertando Archivo Multimedia ';
	INSERT INTO ArchivosMultimedia
	VALUES(idArchivo, fuente, idArticulo);
 	RAISE NOTICE 'Archivo insertado';
	
	commit;
						
	RAISE NOTICE 'Insertando video %', titulo;
	INSERT INTO Videos
	VALUES (idVideo, horaDePublicacion, fechaDePublicacion, linkArticulo, 
			titulo, enlace, Hastag, descripcion);
 	RAISE NOTICE 'Video % insertado', titulo; 
END
$CODE$
LANGUAGE 'plpgsql';

call insertandoVideo(16, '14:11:00', '26/05/2023', null, 'Pasajero abre puerta de emergencia durante vuelo',
					'https://canal1.com.co/videos/video-pasajero-abre-puerta-emergencia-vuelo/', '#Virales',
					'Un video difundido en redes sociales, capturado por un pasajero, muestra cómo el aire ingresaba a la cabina a través de la puerta abierta, la cual fue desplegada por un pasajero.',
					16, 'Nicolás Combita', null);
						
