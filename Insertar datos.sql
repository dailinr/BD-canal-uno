/*TABLA CATEGORIAS*/
insert into Categorias(idCategoria, tipoArticulo, nombre)
values (1, 'entretenimiento', 'entretenimiento'),
(2, 'entretenimiento', 'virales'),
(3, 'entretenimiento', 'ideas utiles'),
(4, 'entretenimiento', 'estilo de vida'),
(5, 'noticias', 'nacional'),
(6, 'noticias', 'mundo'),
(7, 'noticias', 'bogota'),
(8, 'noticias', 'deportes'),
(9, 'noticias', 'economia'),
(10, 'noticias', 'empresas'),
(11, 'noticias', '1opina'),
(12, 'noticias', 'politica');

/*TABLA TELEFONOS DEL CANAL*/
insert into telefonoscanal(idTelefono, numerotelefono)
values (1, '6014325356'), (2, '6014107236');

/*TABLA PROGRAMAS*/
insert into programas(idPrograma, urlImagenPortada, closedCaption , sinopsis,streaming,descripcionCorta,nombre)
values 
(1, 'https://images.canal1.com.co/wp-content/uploads/2023/03/15083313/1905w-Noticentro-1-CM.jpg','1',
'El programa es reconocido por su veracidad, credibilidad e imparcialidad,
 a la hora de llevar información a los hogares colombianos. 
 Encontrará en nuestro noticiero lo mejor de CM&, una marca con más de 20 años de experiencia
 ofreciendo calidad informativa en las noticias en Colombia.
 Dirigido por el prestigioso periodista colombiana, Yamid Amat. ',
 '1','Lunes a viernes a las 12:00 a.m. y 8:00 p.m. ', 'NotiCentro 1 CM&'),
 
(2, 'https://images.canal1.com.co/wp-content/uploads/2019/11/07032030/casocerrado-1905w-e1590803405958.jpg', '1', 'Caso Cerrado te mostrará historias humanas y vivirás las emociones más intensas.
Prepárate para llorar y conmoverte con casos que la doctora Polo buscará resolver de la manera más justa.', '0', 'Con la Doctora Polo', 'Caso Cerrado'),
	
(3, 'https://images.canal1.com.co/wp-content/uploads/2022/05/04090613/1905w-LST-2022.jpg', '0', 'Lo Sé Todo" tiene la mezcla perfecta para alegrar las tardes de los colombianos. 
Si eres de quienes le interesa lo que pasa en el mundo del entretenimiento, 
éste se convertirá en tu programa favorito, en el que podrás enterarte de todas esas historias e información de la farándula.', '0', 'Lun - Vie 2:00 p.m', 'Lo Sé Todo' ),		
				
(4, 'https://images.canal1.com.co/wp-content/uploads/2022/08/04154752/1905w-magnum.jpg', '0', 'Magnum llega a la programación del Canal 1 para atrapar a los amantes del misterio y la acción a través de una historia cargada de adrenalina.
Esta exitosa serie de drama policíaco cuenta la historia de Thomas Magnum,
un ex marine veterano de la guerra de Afganistán quien regresa a casa y se convierte en investigador privado en Hawai.', '0', 'Sábados', 'Magnum'),
		 
(5, 'https://images.canal1.com.co/wp-content/uploads/2019/11/08125711/1905w_pregunta_yamid.jpg', '1', 'Pregunta Yamid es el programa en el que Yamid Amat realiza entrevistas a personalidades reconocidas, 
haciendo hincapié en sus vidas personales, trabajos y anécdotas.', '1', 'Lunes a viernes durante la emisión central del Noticiero CM&', 'Pregunta Yamid'),		 
	
(6, 'https://images.canal1.com.co/wp-content/uploads/2022/04/26160426/1905w-chicago-fire.jpg', '1', 'Chicago Fire cuenta las vidas, tanto profesionales como personales, 
de los bomberos y los paramédicos de Chicago en la estación 51 que cuenta con el camión 81,
la brigada de rescate 3, la Ambulancia 61 y el batallón 25.', '0', 'Lunes a viernes', 'Chicago Fire'),	
	
(7, 'https://images.canal1.com.co/wp-content/uploads/2020/03/20180542/funcion-estelar-generica-home.jpg', '0', 'Con Función Estelar las noches serán mucho más divertidas. 
Quédate en casa con Canal 1 y buenas películas que no te puedes perder.', '0', 'Sábados', 'Función Estelar'),
	
(8, 'https://images.canal1.com.co/wp-content/uploads/2023/03/16170656/1905w-Red-__.jpg', '0', 'Red+ Noticias de hoy en Colombia y el mundo','1', 'Todos los dias a las 11:00 PM', 'Red+ Noticias');	

/*TABLA STORIES*/
insert into stories (idStorie, urlImagen,fuenteImagen,descripcion)
values 
(1, 'https://images.canal1.com.co/wp-content/uploads/2023/05/24185822/cropped-cropped-cropped-000_33G44DR-1-scaled-1.jpg', 'BERTRAND GUAY', 'Tina Turner: Datos Curiosos'),
(2, 'https://images.canal1.com.co/wp-content/uploads/2022/06/18202243/cropped-cropped-anuel-flaco-sugerentes-movimientos-yailin.jpg', '@anuel', '¡Esto no para! ahora Anuel estaria acusando a Faid por acoso'),
(3, 'https://images.canal1.com.co/wp-content/uploads/2023/05/24125553/cropped-WhatsApp-Image-2023-05-23-at-19.47.22-1-2.jpeg', '@vinijr', 'Caso Vinicius: Los mensajes de sus colegas'),
(4, 'https://images.canal1.com.co/wp-content/uploads/2021/09/28084102/cropped-daniella-alvarez-2-1.jpg', 'Archivo', 'DANIELLA ALVAREZ INGRESO AL MUNDO DE LA MUSICA'),
(5, 'https://images.canal1.com.co/wp-content/uploads/2023/04/18202757/cropped-Tengo-mucho-que-decirles-Bad-Bunny-regreso-a-Instagram-con-galeria-de-fotos-y-un-video.jpg', '@badbunnypr', 'El gesto"humillante" que tuvo Kendall Jenner con Bad Bunny'),
(6, 'https://images.canal1.com.co/wp-content/uploads/2023/05/16084943/cropped-Mujer-descubrio-que-el-ladron-que-la-robo-era-su-exnovio.jpg', '¡Stock', 'Mujer descubrio que el ladron que la robo era su exnovio'),
(7, 'https://images.canal1.com.co/wp-content/uploads/2023/05/23123546/cropped-robinson-diaz-adriana-arango-separan-varias-ocasiones.jpg', '@adrianaarango', '"Somos un caso perdido" Robinson Diaz hablo sobre su relacion con adriana arango'),
(8, 'https://images.canal1.com.co/wp-content/uploads/2023/05/16102116/cropped-El-siniestro-caso-de-una-mujer-que-mato-a-sus-hijos-por-considerarlos-zombis-1.jpg', '¡Stock', 'El siniestro caso de una mujer que mato a sus hijos por considerarlos "zombies"'),
(9, 'https://images.canal1.com.co/wp-content/uploads/2023/05/11162412/cropped-delfin-rosado.jpg','Nicolas combita', 'Islas del rio caqueta, un tesoro escondido en la selva amazonica ');

/*TABLA MASCOTAS*/

insert into Mascotas (idMascota, urlFotoMascota, celular, tipoMascota, zona, ciudad, ultimaVezVisto, categoria, correo, nombre, descripcion)
values 
(1, 'https://images.canal1.com.co/peludos-del-1/uploadImages/422o4zs.jpg',3163064588,
		'Perro','Centro', 'Bogotá', '21/05/2023', 'Estoy perdido',
	'lunadalmata@gmail.com', 'Luna', 'Es una dalmata con una oreja negra'), 
(2, 'https://images.canal1.com.co/peludos-del-1/uploadImages/i9jjfds.jpg',3144661895, 
	 'Perro', 'Sur', 'Bogotá', '19/05/2023', 'Estoy perdido',
	'cookie123@gmail.com', 'Cookie', 'Es un beagle negro con blanco'),
(3, 'https://images.canal1.com.co/peludos-del-1/uploadImages/fxm2dsf.jpg',3223965159, 
	 'Perro', 'Sur', 'Alrededores Bogotá', '16/05/2023', 'Estoy perdido',
	'zeus@gmail.com', 'Zeus', 'Es de color blanco pequeño'),
(4, 'https://images.canal1.com.co/peludos-del-1/uploadImages/nlawhw7.jpg',3005432843, 
	 'Perro', 'Sur', 'Alrededores Bogotá', '11/05/2023', 'Estoy perdido',
	'piña@gmail.com', 'Piña', 'Tiene un collar con su nombre'),
(5, 'https://images.canal1.com.co/peludos-del-1/uploadImages/l80zjb5.jpg',3043463743, 
	 'Gato', 'Norte', 'Bogotá', '21/05/2023', 'Estoy perdido',
	'lunacat@gmail.com', 'Luna', 'Gato blanco con manchas en la cabeza'),
(6, 'https://images.canal1.com.co/peludos-del-1/uploadImages/wul3ndz.jpg',3028315156, 
	 'Gato', 'Sur', 'Bogotá', '12/03/2023', 'Estoy perdido',
	'garfield@gmail.com', 'Garfield', 'Es un mono atrigado con la punta de la cola blanca'),
(7, 'https://images.canal1.com.co/peludos-del-1/uploadImages/o4ckdih.jpg',3122154081, 
	 'Perro', 'Sur', 'Cali', '01/05/2023', 'Estoy perdido',
	'juniorpug@gmail.com', 'Junior', 'Perrito pug de 5 años castrado, color beige'), 
(8, 'https://images.canal1.com.co/peludos-del-1/uploadImages/o5tytn3.jpg',3217204658, 
	 'Perro', 'Sur', 'Cali', '01/05/2023', 'Estoy perdido',
	'juniorpug@gmail.com', 'Junior', 'Perrito pug de 5 años castrado, color beige');
	
/*TABLA AUTORES*/
insert into Autores(idAutor, nombre, apellido, ocupacion, urlFoto)
values 
(1, 'Jorge', 'Laverde', 'Secretario General Comisión VI del Senado', 
		'https://images.canal1.com.co/wp-content/uploads/2023/05/24085033/Jorge-Laverde-comision-300x298.jpeg'),
(2, 'Tatiana', 'Velásquez', 'Cofundadora de La Contratopedia Caribe', 
		'https://images.canal1.com.co/wp-content/uploads/2023/04/03074244/Tatiana-Velasquez-300x300.jpg'),
(3, 'Andrea', 'Aldana', 'Embajadora El Poder de Ellas', 
		'https://images.canal1.com.co/wp-content/uploads/2023/05/04144508/Andrea-Aldana-columnista-300x300.jpg'),
(4, 'Iván', 'Bernal', 'Gerente de contenidos y creatividad', 
		'https://images.canal1.com.co/wp-content/uploads/2023/05/15153757/Ivan-Bernal-columna-300x246.jpg'),
(5, 'Alejandra', 'Machuca', 'Corporate Millennial', 
		'https://images.canal1.com.co/wp-content/uploads/2023/04/10144912/Alejandra-Machuca-columnista-300x225.jpg');
		
/*TABLA ARTICULOS*/
insert into Articulos
values (1, 'Esta noche inicia reconexión de gas en el Eje Cafetero, Tolima y suroccidente del país', 
	   'El gasoducto de la TGI inició el llenado y presurización de gas natural en su infraestructura, luego de realizar pruebas
		para verificar el sistema que habría sido afectado por un fenómeno de gases incandescentes que se presentó en la ladera de Cerro Bravo.
		Es muy probable que dentro de las próximas 12 horas se restablezca gradualmente el servicio de transporte de gas natural para el Eje Cafetero, 
		Tolima y Suroccidente. Sin embargo, hasta nuevo aviso es importante que la comunidad acate las órdenes de mantener las llaves del gas cerradas
		tanto en los centros de medición como en la red interna y los gasodomésticos.
		¿Qué es lo que está sucediendo con el gas?
		Los departamentos de Caldas, Risaralda, Quindío, Nariño y Valle del Cauca están en contingencia por una suspensión del servicio del gas,
		que se originó por un fenómeno de gases e incandescencias en una de las laderas de Cerro Bravo, en Tolima, desde este 20 de mayo.',
		'Gas natural, Gas propano, TGI', '25/05/2023', '10:34:00', 'Redacción digital CM&', 
		'https://images.canal1.com.co/wp-content/uploads/2020/10/18125135/gas-768x384.jpg', (select idcategoria from categorias where nombre = 'nacional'), null);

insert into Articulos
values (2, 'Érika Aponte había pedido ayuda al Distrito antes de ser asesinada: Procuraduría investiga funcionarios', 
	   'La Procuraduría General de la Nación informó que inició una indagación a funcionarios del Distrito, por la presunta omisión a las medidas de 
		seguridad y protección solicitadas por Erika Aponte, ante las amenazas que sufría por parte de su pareja.
		El ente confirmó que la víctima acudió a la Casa de la Justicia de Usme para solicitar ayuda, por lo que, 
		se verificará si los servidores públicos atendieron el llamado Érika adecuadamente y si activaron las medidas apropiadas.
		La Procuraduría busca esclarecer los hechos que son objeto de investigación y se ordenó la práctica de las pruebas necesarias
		en las entidades para conocer las acciones llevadas a cabo.',
		'Caso de feminicidio, Erika Aponte', '25/05/2023', '11:21:00', 'Redacción digital CM&', 
		'https://images.canal1.com.co/wp-content/uploads/2023/05/15145149/quien-era-erika-aponte-768x384.jpg',(select idcategoria from categorias where nombre = 'bogota'), null);

insert into Articulos
values (3, 'Mundial sub-20: Colombia vuelve a remontar ante Japón y se instala en octavos de final', 
	   'La selección Colombia volvió a remontar un resultado adverso, se impuso este miércoles ante 
		Japón por 1-2 y selló su boleto a los octavos de final del Mundial sub-20.
		Al igual que sucedió este domingo en el encuentro que disputó ante Israel, el conjunto “cafetero”
		comenzó perdiendo y debió remar desde atrás para quedarse con los tres puntos.
		
		Yaser Asprilla y Tomás Ángel -hijo del histórico goleador Juan Pablo Ángel- marcaron esta vez en la segunda
		parte para remontar el golazo anotado por Riku Yamane a los 30 minutos de la primera etapa.
		Dominio repartido y primer golpe de los nipones
		Disputado en el estadio de la ciudad de La Plata, el encuentro comenzó parejo y con los equipos trabajando 
		mucho más en el centro del campo que sobre las áreas. Con dos trepadas por izquierda que se convirtieron en las primeras 
		aproximaciones peligrosos, el centrocampista Daniel Luna rompió el hielo, aunque las revoluciones no tardaron en volver a bajar.',
		'Mundial sub-20, Selección Colombia', '24/05/2023', '21:35:00', 'EFE', 
		'https://images.canal1.com.co/wp-content/uploads/2023/05/24205204/sub0-768x384.jpg',8, null);
		
insert into Articulos
values (4, 'El dólar cayó más bajo de los $4.500 ¡Es momento de comprar!', 
	   'Amanecemos con la noticia en Colombia de que el dólar se encuentra en uno de los precios más bajos desde hace mucho tiempo, 
		logró romper la barrera de los $4.500 y ya se encuentra en $4.487,90. Esto ha conllevado a que la gente piense en comprar algunos
		de estos, buscando sacar algo de provecho sobre su bajo precio. La razón principal por la cual la moneda estadounidense se encuentra
		en un declive favoreciendo la economía de nuestro país se debe a la valorización del petróleo nacional, ya que este tiene como referencia
		el barril ‘Brent’ el cual ha subido en un 0.61%, llevando a que el oro negro suba y tenga un precio de $82,07 en el mercado internacional.',
		'dólar, Petróleo', '12/04/2023', '08:41:00', 'Redacción Digital Canal 1', 
		'https://images.canal1.com.co/wp-content/uploads/2023/04/12083905/El-dolar-cayo-mas-bajo-de-los-4.500-%C2%A1Es-momento-de-comprar-768x384.jpg',(select idcategoria from categorias where nombre = 'economia'), null);
		
insert into Articulos
values (5, 'Acciones de Ecopetrol se desploman, ¿cuál fue el motivo?', 
	   'Las acciones de Ecopetrol registraron una fuerte caída en Wall Street tras el anuncio del nuevo presidente de la compañía, Ricardo Roa, de no firmar más contratos de exploración. La acción de Ecopetrol en Wall Street tuvo un fuerte descenso de más del 10%, luego de que el nuevo presidente de la empresa, Ricardo Roa, anunciara la decisión de no firmar más contratos de exploración Las declaraciones del presidente de la petrolera colombiana generaron preocupación entre los inversionistas, quienes reaccionaron negativamente en el mercado bursátil estadounidense.',
		'economía, Ecopetrol', '25/04/2023', '16:15:00', 'Nicolás Combita', 
		'https://images.canal1.com.co/wp-content/uploads/2021/08/14111635/Screenshot_2021-08-14-11-16-09-61_40deb401b9ffe8e1df2f1cc5ba480b12-768x398.jpg',(select idcategoria from categorias where nombre = 'economia'), null);
		
insert into Articulos
values (6, 'Activan plan de emergencia por actividad del volcán Popocatépetl en México', 
	   'Las autoridades mexicanas elevaron este domingo el nivel de alerta para el volcán Popocatépetl, ante una creciente actividad que podría afectar la aviación y a poblaciones incluso alejadas por el lanzamiento de fragmentos. Un día después de que las operaciones en el aeropuerto de Ciudad de México tuvieran que ser suspendidas temporalmente por la caída de ceniza, Protección Civil anunció que el nivel de alerta pasa de “amarillo fase 2 a amarillo fase 3”. Se trata del nivel previo al rojo de alta peligrosidad, dividido también en dos fases, explicó la coordinadora del organismo, Laura Velázquez, en rueda de prensa.
		El Popocatépetl, cuyo proceso eruptivo se reactivó en diciembre de 1994, se ubica en los límites de los estados de México, Morelos y Puebla. La capital de Puebla -del mismo nombre- amaneció este domingo cubierta de una capa gris, observó un reportero de la AFP.',
		'Erupción volcán, Volcán', '23/05/2023', '07:32:00', 'AFP',
		'https://images.canal1.com.co/wp-content/uploads/2023/05/23073122/volcan-Popocatepetl-480x240.jpg',(select idcategoria from categorias where nombre = 'mundo'), null);
		
insert into Articulos
values (7, 'Privados siguen en Triple A, pese a condición de la SAE', 
	   'Han pasado tres meses desde que la Sociedad de Activos Especiales (SAE) le devolvió las acciones de la Triple A, a la Alcaldía de Barranquilla y, aunque Bogotá puso como condición la salida de los privados de esa compañía para ampliar la participación accionaria pública, en la reciente junta directiva quedaron como miembros principales dos empleados del emporio empresarial de William Vélez.
		Vélez, zar de las basuras, tiene participación en la empresa mixta de alumbrado público K-yena SAS, que ahora es dueña del 82.16% de las acciones de la Triple A y cuyo socio mayoritario es el Distrito barranquillero.
		K-yena compró esas acciones después de un opaco negocio celebrado en diciembre de 2021, durante el gobierno de Iván Duque.',
		'Alcaldia de Barranquilla, Caribe', '19/05/2023', '09:02:00', 'Redacción Digital Canal 1' , null,(select idcategoria from categorias where nombre = '1opina'), (select idautor from Autores where nombre = 'Tatiana'));
		
		
insert into Articulos
values (8, 'Hablando de aerolíneas y chantajes', 
	   'Hay otro significado para la palabra avión, más allá del de una aeronave con alas donde sirven comida inviable. En el sentido más urbano, un avión se refiere en Colombia a una persona astuta, sagaz, calculadora; un malvado picarín, que sabe aprovecharse de los demás para sacar partido.
		Un viejo zorro, un bellaco, un marrullero que acomoda las circunstancias para su beneficio. En fin. Ejemplo de lugar común: los políticos son unos aviones (no importa cuando leas esto). Y no estoy hablando concretamente de ningún Roy Barreras.
		Resulta casi, casi, como si estuviéramos hablando de las aerolíneas en sí mismas. Viendo lo que está pasando en el país, no es tanto los aviones que las empresas tienen, sino lo avionas que son.

		¿Se ha sentido usted estafado, ‘tumbado’ por una aerolínea? Encuentro difícil que alguien responda que no, teniendo en cuenta que 19 aerolíneas fueron sancionadas el año pasado por cláusulas abusivas que violaban los derechos de los pasajeros. En la lista entran prácticamente todos los jugadores del sector. No se salva ninguna.
		Las aerolíneas son capaces de sobre vender tu vuelo y dejarte sin silla cualquier día, o avisarte a último momento que el avión está retrasado y que el itinerario se aplazará por horas indefinidas, sin importarles las consecuencias. En cambio, si eres tú el que llega un par de minutos tarde, son igual de capaces de joderte: vuelo cerrado y ninguna opción de devolución de dinero. Buena suerte y hasta luego.',
		'Aerocivil, Avianca', '15/05/2023', '18:21:00', 'Redacción Digital Canal 1' , 'https://images.canal1.com.co/wp-content/uploads/2023/05/15175711/Uribe-dancing.gif',(select idcategoria from categorias where nombre = '1opina'), (select idautor from Autores where nombre = 'Iván'));		

insert into Articulos
values (9, 'Actriz de ‘La Sirenita’, Halle Bailey, habla de la importancia de la inclusión para la niñez', 
	   'La actriz estadounidense, Halle Bailey, se prepara para deslumbrar con su papel en el Live action de ‘La Sirenita’ de Disney, un papel bastante polémico, pues desde que se anunció que haría parte de la trama muchas personas la cuestionaron porque no tenía nada de parecido con la muñeca animada, todo esto basado en su tono de piel.
		A pesar de los comentarios la compañía encargada del filme manifestó que continuaría con la actriz, puesto que lo que querían era darle una visión diferente y ayudar a millones de niñas que crecieron viviendo con el rechazo.
		Ante esto, la actriz se sinceró y en una reciente entrevista con el medio británico The Guardian, dijo que su niñez hubiese sido distinta viendo un personaje como el que ella interpreta, reforzando la inclusión. 
		Asimismo, resaltó que para otras personas era algo normal, ya que estaban acostumbrados a sentirse identificados toda su vida, algo poco importante, pero que para las personas negras sí lo es.',
		'Disney, racismo', '22/05/2023', '15:10:00', 'Digital Canal 1' , 'https://images.canal1.com.co/wp-content/uploads/2023/05/22150851/la-sirenita-halle-bailey-habla-de-la-importancia-de-la-inclusion-768x384.jpg',(select idcategoria from categorias where nombre = 'estilo de vida'), null);		
		
insert into Articulos
values (10, '¿Violencia digital? Rosalía arremete contra rapero que editó fotografías para que se viera desnuda', 
	   'Esta semana se viralizaron algunas fotografías sugestivas que parecían ser de la reconocida cantante española, Rosalía, pese a que varios fanáticos salieron en su defensa, otros internautas pensaron que eran reales y las difundieron.
		La primera persona en publicar estas fotos fue el rapero JC Reyes, allí se ve a la catalana con el torso completamente descubierto, pero según presumen algunas personas el rapero las editó con Inteligencia Artificial. 

		La imagen llegó a todos los seguidores de Reyes y fanáticos de Rosalía, que lo criticaron fuertemente por sexualizarla y utilizar su imagen sin consentimiento para generar “fama”.
		Enseguida, la cantante se pronunció y le dejó un contundente mensaje a Reyes, expresando su descontento, allí manifestó que el cuerpo de una mujer no era propiedad pública, mucho menos mercancía, recordando que todos vienen de una mujer.',
		'Rosalía, Víctimas de violencia', '25/05/2023', '12:24:00', 'Dana Gabriela Chaparro C' , 'https://images.canal1.com.co/wp-content/uploads/2023/05/25122238/rosalia-arremete-contra-rapero-que-edito-fotografias-768x384.jpg',(select idcategoria from categorias where nombre = 'virales'), null);		

/*TABLA USUARIOS*/
insert into Usuarios (identificacion, telefono, pais, correo, edad, nombre, apellido)
values (1, 3175568743,'Colombia', 'jordi_rentería@protonmail.com', 23, 'Jordi', 'Renteria'), 
       (2, 3009876755, 'Colombia', 'andrea_gil@hotmail.com', 40, 'Andrea', 'Gil'),
       (3, 3215476311, 'Colombia', 'hermenio_pacheco@outlook.com', 34, 'Hermenio', 'Pacheco'),
       (4, 525589202465, 'Mexico', 'juan_ramón_saavedra@yandex.com', 65, 'Juan', 'Saavedra'),
       (5, 3100122676, 'Colombioa', 'rubén_madera@hotmail.com', 46, 'Ruben', 'Madera'),
       (6, 584121234567, 'Venezuela', 'josep_dueñas@outlook.com', 22, 'Josep', 'Dueñas'),
       (7, 3209985464, 'Colombia', 'laura_ríos@gmail.com', 35,'Laura', 'Rios'),
       (8, 3002121354, 'Colombia', 'miguel_ledesma_ii@yandex.com', 40, 'Miguel', 'Ledesma'),
       (9, 3154456565,'Colombia', 'daniel_mendoza@protonmail.com', 37, 'Daniel', 'Mendoza'),
       (10, 3166431242, 'Colombia', 'ana_enríquez@yahoo.com', 25, 'Ana', 'Enriquez');


/*TABLA HORARIOS*/	
insert into Horarios(idHorario, dia, horaInicio, horaFinalizacion)
values (1, 'Lunes', '12:00:00', '20:00:00'),
       (2, 'Martes', '19:00:00', '22:00:00'),
       (3, 'Miercoles', '14:00:00', '18:00:00'),
       (4, 'Sabado', '15:00:00', '19:00:00'),
       (5, 'Jueves', '08:00:00', '11:00:00'),
       (6, 'Lunes', '06:00:00', '10:00:00'),
       (7, 'Viernes', '18:00:00', '00:00:00'),
       (8, 'Domingo', '13:00:00', '15:00:00');
     
/*TABLA LUGARES FALLA*/ 
insert into LugaresFalla (idLugarFalla, tipoZonaRural, ciudad, departamento, direccion)
values (1, 'Municipio', 'Pueblo Viejo', 'Magdalena','Calle 5 #6-72'),
       (2, 'Municipio', 'Guamal', 'Magdalena', 'Calle 13 #06-1'),
       (3, 'Provincia', 'Medina', 'Cundinamarca', 'Calle 13 #6-55'),
       (4, 'Provincia', 'Soacha', 'Cundinamarca', 'Calle 14 #7-30'),
       (5, 'Municipio', 'Malambo', 'Atlantico', 'Calle 11 Carrera 15 esquina'),
       (6, 'Municipio', 'Piojó', 'Atlantico', 'Calle 6 #4A-04'),
       (7, 'Municipio', 'Alvarado', 'Tolima', 'Carrera 3 Calle 4 esquina'),
       (8, 'Municipio', 'Riofrio', 'Valle del Cauca', 'Carrera 9 #5-58');

/*TABLA REDES SOCIALES*/
insert into RedesSociales (idRedSocial, tipo, link)
values
(1, 'facebook' , 'https://web.facebook.com/Canal1Col/'),
(2, 'twitter' , 'https://twitter.com/Canal1Colombia'),
(3, 'instagram' , 'https://www.instagram.com/canal1col/'),
(4, 'youtube' , 'https://www.youtube.com/c/Canal1Col');

/*TABLA CORREOS*/
insert into Correos(idCorreo, email) values (1, 'defensor@canal1.com.co');
insert into Correos(idCorreo, email) values (2, 'publico@guerreroscolombia.com');
insert into Correos(idCorreo, email) values (3, 'losetodo@canal1.com.co');

/*TABLA EMISIONES*/
insert into Emisiones(idPrograma, idHorario)
values ((select idPrograma from Programas where nombre = 'Red+ Noticias'), (select idHorario from Horarios where horaInicio = '06:00:00')),
       ((select idPrograma from Programas where nombre = 'NotiCentro 1 CM&'), (select idHorario from Horarios where horaInicio = '12:00:00')),
       ((select idPrograma from Programas where nombre = 'Caso Cerrado'), (select idHorario from Horarios where horaInicio = '15:00:00')),
       ((select idPrograma from Programas where nombre = 'Lo Sé Todo'), (select idHorario from Horarios where horaInicio = '14:00:00')),
       ((select idPrograma from Programas where nombre = 'Magnum'), (select idHorario from Horarios where horaInicio = '08:00:00')), 
       ((select idPrograma from Programas where nombre = 'Pregunta Yamid'), (select idHorario from Horarios where horaInicio = '19:00:00')),
       ((select idPrograma from Programas where nombre = 'Chicago Fire'), (select idHorario from Horarios where horaInicio = '13:00:00')),
       ((select idPrograma from Programas where nombre = 'Función Estelar'), (select idHorario from Horarios where horaInicio = '18:00:00'));

/*TABLA VISUALIZACIONES STORIES*/
insert into VisualizacionesStories(idStorie, idUsuario, hora, fecha)
values ((select idStorie from Stories where descripcion = 'Tina Turner: Datos Curiosos'), 6, '20:00:00', '26/05/2023'),
       ((select idStorie from Stories where descripcion = '¡Esto no para! ahora Anuel estaria acusando a Faid por acoso'), 1, '23:45:00', '19/05/2023'),
       ((select idStorie from Stories where descripcion = 'Caso Vinicius: Los mensajes de sus colegas'), 3, '08:30:00', '24/05/2023'),
       ((select idStorie from Stories where descripcion = 'DANIELLA ALVAREZ INGRESO AL MUNDO DE LA MUSICA'), 10, '15:25:00', '20/05/2023'),
       ((select idStorie from Stories where descripcion = 'El gesto"humillante" que tuvo Kendall Jenner con Bad Bunny'), 7, '19:01:00', '16/05/2023'),
       ((select idStorie from Stories where descripcion = 'Mujer descubrio que el ladron que la robo era su exnovio'), 4, '20:10:00', '13/05/2023'),
       ((select idStorie from Stories where descripcion = '"Somos un caso perdido" Robinson Diaz hablo sobre su relacion con adriana arango'), 5, '10:50:00', '25/05/2023'),
       ((select idStorie from Stories where descripcion = 'El siniestro caso de una mujer que mato a sus hijos por considerarlos "zombies"'), 2, '00:55:00', '13/05/2023'),
       ((select idStorie from Stories where descripcion = 'Islas del rio caqueta, un tesoro escondido en la selva amazonica '), 8, '00:57:00', '26/05/2023');

/*TABLA SUGERENCIAS*/
insert into Sugerencias(idSugerencia, idUsuario, idPrograma, comentario)
values (1, 7, (select idPrograma from Programas where nombre = 'Lo Sé Todo'), 'Me encantaria que usaran mas las histories de instagram.'),
       (2, 2,(select idPrograma from Programas where nombre = 'NotiCentro 1 CM&'), 'El mejor noticiero, no le cambiaria nada.'),
	   (3, 5, (select idPrograma from Programas where nombre = 'NotiCentro 1 CM&'), 'Me encanta NotiCentro 1 CM&, pero me gustaría ver más enfoque en noticias internacionales para tener una perspectiva global.'),
	   (4, 1, (select idPrograma from Programas where nombre = 'Caso Cerrado'), 'Caso Cerrado es emocionante, pero sería genial si incluyeran más casos relacionados con temas legales actuales y controversiales.'),
	   (5, 3, (select idPrograma from Programas where nombre = 'Lo Sé Todo'), 'Es entretenido, pero sugiero tener más secciones dedicadas a la cultura y el arte local. ¡Hay tanto talento por descubrir.' ),
	   (6, 6, (select idPrograma from Programas where nombre = 'Red+ Noticias'), 'Es mi fuente confiable de información, pero me gustaría que incorporaran más debates y análisis de expertos sobre temas de actualidad.');

/*TABLA REPORTES DE SEÑAL*/
insert into ReportesSeñal (idReporte, horaFalla, formaVisualizacion, fechaFalla, descripcionFalla, tipoFalla, tipoAntena, tipoSeñal, idUsuario, idLugarFalla)
values 
(1, '03:40:00', 'tv', '23/05/2023', 'Se cortó la señal todo el día', 'no hay señal', 'antena en techo', 'analoga', 
		1, (select idlugarfalla from lugaresfalla where ciudad = 'Malambo')),
(2, '12:20:00', 'tv', '22/05/2023', 'Se queda estatica la señal en pantalla', 'audio o video retrasado', 'antena en techo', 'TDT', 
		2, (select idlugarfalla from lugaresfalla where ciudad = 'Soacha')),
(3, '10:10:00', 'tv', '24/05/2023', 'No se escucha el audio de los programas', 'audio o video retrasado', 'antena sobre tv', 'TDT', 
		3, (select idlugarfalla from lugaresfalla where ciudad = 'Malambo')),
(4, '08:05:00', 'internet', '24/05/2023', 'No cargan los programas', null, null, null, 
		5, (select idlugarfalla from lugaresfalla where ciudad = 'Riofrio')),
(5, '18:50:00', 'internet', '25/05/2023', 'la pagina se cae mucho', null, null, null, 
		5, (select idlugarfalla from lugaresfalla where ciudad = 'Soacha'));
		

/*TABLA ARCHIVOS MULTIMEDIA*/
insert into ArchivosMultimedia(idArchivo, fuente, idArticulo)
values 
(1, 'Liudmila Chernetska', 4), 
(2, 'Erikha Aponte', 2), 
(3, 'Archivo', 1),
(4, 'Instagram: @hallebailey', 9),
(6, 'Instagram: @rosalia.vt @_theyounggypsy', 10), 
(7, 'Volcán Popocatepetl', 6), 
(8, 'AFP/Real Time and Archive + Getty North America', 3),
(9, 'Instagram: @famososhastalaz', 10), 
(10, null, 5),
(11, 'https://youtu.be/H2pUlF-s7tE', null),
(12, 'https://youtu.be/qFf1IzzpIiU', null),
(13, 'https://mdstrm.com/ab6cd003-a27e-46e5-bc57-e51225263678', null),
(14, 'https://youtu.be/qiw87bzMRtw', null),
(15, 'https://youtu.be/yAAqIpFMNfk', null);

/*TABLA IMAGENES*/		
insert into Imagenes(idImagen, urlImagen)
values 
(1, 'https://images.canal1.com.co/wp-content/uploads/2023/04/12083905/El-dolar-cayo-mas-bajo-de-los-4.500-%C2%A1Es-momento-de-comprar-768x384.jpg'),
(3, 'https://images.canal1.com.co/wp-content/uploads/2023/05/24115412/g-1-768x384.jpg'),
(2, 'https://images.canal1.com.co/wp-content/uploads/2023/05/15145149/quien-era-erika-aponte-768x384.jpg'),
(10, 'https://images.canal1.com.co/wp-content/uploads/2021/08/14111635/Screenshot_2021-08-14-11-16-09-61_40deb401b9ffe8e1df2f1cc5ba480b12-768x398.jpg'),
(4, 'https://images.canal1.com.co/wp-content/uploads/2023/05/22150851/la-sirenita-halle-bailey-habla-de-la-importancia-de-la-inclusion-768x384.jpg'),
(6, 'https://images.canal1.com.co/wp-content/uploads/2023/05/25122238/rosalia-arremete-contra-rapero-que-edito-fotografias-768x384.jpg'),
(9, 'https://www.instagram.com/p/Csq0YmPrIxw/?utm_source=ig_embed&ig_rid=5bf52ce1-dc6e-42bc-a70a-f05315f0abe8'),
(7, 'https://images.canal1.com.co/wp-content/uploads/2023/05/23073122/volcan-Popocatepetl-768x512.jpg'),
(8, 'https://images.canal1.com.co/wp-content/uploads/2023/05/24205204/sub0-768x384.jpg');

/*TABLA VISUALIZACIONES MASCOTAS*/
insert into visualizacionesMascota(idMascota, idUsuario, fecha, hora)
values  (1, 2, '26/05/2023', '09:30:00'), (2, 2, '30/04/2023', '10:23:00'),
		(4, 6, '20/05/2023', '12:20:10'), (7, 3, '18/05/2023', '15:49:10'),
		(5, 10, '06/12/2022', '08:36:00'), (8, 9, '01/02/2023', '17:00:00'),
		(7, 4, '26/03/2023', '19:30:00'), (6, 8, '31/12/2022', '23:03:00'),
		(3, 10, '20/01/2023', '11:20:10'), (7, 5, '15/05/2023', '05:49:00');
		
/*TABLA VISUALIZACIONES ARTICULO*/		
insert into visualizacionesArticulo 
values 
(1, 3, '23/05/2023', '10:28:00'), 
(2, 5, '14/04/2023', '14:09:00'),
(4, 8, '15/03/2023', '05:28:00'), 
(5, 10, '19/09/2022', '13:45:00'),
(6, 2, '18/02/2023', '03:31:00'), 
(8, 9, '28/04/2023', '13:02:45'),
(6, 7, '04/04/2023', '17:08:00'), 
(8, 10, '13/03/2022', '13:56:00'),
(3, 10, '05/05/2023', '08:10:00'), 
(4, 5, '26/05/2023', '09:12:00');
		
/*TABLA CONTACTOS DEL CANAL*/
insert into contactosdelcanal
values 
(1, 1 ,1, 1),
(2, 1, 2, 2),
(3, 2, 3, 3),
(4, 2, 2, 4),
(5, 1, 1, 2);

/*TABLA VIDEOS*/
insert into Videos
values
(11, '07:45:00', '14/11/2022', 'https://canal1.com.co/videos/vendieron-biblia-mas-cara-mundo/', 'Vendieron la Biblia más cara del mundo', 'https://youtu.be/H2pUlF-s7tE', '#Magazín1', 'Una verdadera joya para los judíos fue vendida en Estados Unidos, el comprador pagó una millonaria suma por la Biblia.'),
(12, '12:00:30', '26/05/2023', 'https://canal1.com.co/videos/golpe-duro-uribistas-caso-contra-expresidente/', '“Es un golpe duro”: uribistas sobre caso en contra del expresidente', 'https://youtu.be/qFf1IzzpIiU', '#NoticiasEnVideos', '“Sabemos que es inocente“: congresistas del Centro Democrático reconocieron que la decisión de la juez para que continúe la investigación en contra del expresidente Álvaro Uribe es un golpe para su partido.'),
(13, '14:11:00', '26/05/2023', 'https://canal1.com.co/videos/video-pasajero-abre-puerta-emergencia-vuelo/', 'Pasajero abre puerta de emergencia durante vuelo', 'https://mdstrm.com/ab6cd003-a27e-46e5-bc57-e51225263678', '#Virales', 'Un video difundido en redes sociales, capturado por un pasajero, muestra cómo el aire ingresaba a la cabina a través de la puerta abierta, la cual fue desplegada por un pasajero.'),
(14, '07:45:00', '20/03/2023', 'https://canal1.com.co/videos/las-senales-que-mantienen-viva-la-busqueda-de-los-ninos-indigenas/', 'Las señales que mantienen viva la búsqueda de los niños indígenas', 'https://youtu.be/qiw87bzMRtw', '#Videos', 'Luego de 26 días continúa la búsqueda de cuatro menores de edad indígenas en la selva del Guaviare.¿Cuáles son las señales que mantienen viva la esperanza? Astrid Cáceres, directora del ICBF.'),
(15, '17:15:00', '05/05/2023', 'https://canal1.com.co/videos/mauricio-bastidas-envia-fuerte-mensaje-al-gobierno/', '“No se queden callados”: Mauricio Bastidas envía fuerte mensaje al gobierno', 'https://youtu.be/yAAqIpFMNfk', '#LoSéTodo', 'Tras su peligroso accidente en carretera, Mauricio Bastidas habló de los detalles que vivió y mandó un contundente mensaje al gobierno.');

insert into episodios(idEpisodio, link,titulo,idPrograma)
values (1, 'https://canal1.com.co/programas/cmi-la-noticia/emisiones/noticentro-1-cm-emision-central-26-de-mayo-de-2023', 'NotiCentro 1 CM& ', '1');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (2, 'https://canal1.com.co/programas/cmi-la-noticia/emisiones/noticentro-1-cm-primera-emision-26-de-mayo-de-2023', 'NotiCentro 1 CM&', '1');

insert into episodios(idEpisodio, link,titulo,idPrograma)
values (3, 'https://canal1.com.co/programas/cmi-la-noticia/emisiones/noticentro-1-cm-emision-central-25-de-mayo-de-2023', 'NotiCentro 1 CM&', '1');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (4, 'https://canal1.com.co/programas/cmi-la-noticia/emisiones/noticentro-1-cm-emision-central-25-de-mayo-de-2023', 'NotiCentro 1 CM&', '1');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (5, 'https://canal1.com.co/programas/cmi-la-noticia/emisiones/noticentro-1-cm-primera-emision-25-de-mayo-de-2023', 'NotiCentro 1 CM&', '1');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (6, 'https://canal1.com.co/programas/cmi-la-noticia/emisiones/noticentro-1-cm-emision-central-24-de-mayo-de-2023', 'NotiCentro 1 CM&', '1');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (7, 'https://canal1.com.co/programas/cmi-la-noticia/emisiones/noticentro-1-cm-primera-emision-24-de-mayo-de-2023', 'NotiCentro 1 CM&', '1');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (8, 'https://canal1.com.co/programas/cmi-la-noticia/emisiones/noticentro-1-cm-emision-central-23-de-mayo-de-2023', 'NotiCentro 1 CM&', '1');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (9, 'https://canal1.com.co/programas/pregunta-yamid/emisiones/la-presidenta-de-la-tgi-monica-contreras-habla-sobre-el-reestablecimiento-de-gas-en-seis-departamentos', 'regunta Yamid', '5');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (10, 'https://canal1.com.co/programas/pregunta-yamid/emisiones/el-ministro-de-salud-guillermo-jaramillo-aclara-si-las-eps-se-van-a-acabar-o-no-con-la-reforma-a-la-salud', 'regunta Yamid', '5');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (11, 'https://canal1.com.co/programas/pregunta-yamid/emisiones/general-sandra-hernandez-habla-sobre-sus-retos-al-frente-de-la-comandancia-de-la-policia-de-bogota', 'regunta Yamid', '5');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (12, 'https://canal1.com.co/programas/pregunta-yamid/emisiones/segunda-parte-director-del-dnp-jorge-ivan-gonzalez-habla-sobre-los-ejes-del-plan-nacional-de-desarrollo', 'regunta Yamid', '5');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (13, 'https://canal1.com.co/programas/pregunta-yamid/emisiones/director-del-dnp-jorge-ivan-gonzalez-habla-sobre-los-ejes-centrales-del-plan-nacional-de-desarrollo', 'regunta Yamid', '5');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (14, 'https://canal1.com.co/programas/pregunta-yamid/emisiones/embajador-de-ecuador-en-colombia-gonzalo-ortiz-explica-que-es-la-muerte-cruzada-tras-crisis-politica-en-su-pais', 'regunta Yamid', '5');


insert into episodios(idEpisodio, link,titulo,idPrograma)
values (15, 'https://canal1.com.co/programas/pregunta-yamid/emisiones/deforestacion-en-la-amazonia-colombiana', 'regunta Yamid', '5');

insert into visualizacionesvideo (idUsuario,idVideo,hora, fecha)
values (4,12, '12:45:00','27/05/2023'),
(5, 11, '18:06:00', '13/03/2023'),
(5, 12, '19:10:00', '15/03/2023'),
(6, 15, '09:12:00', '12/05/2023'),
(7, 12, '10:20:00', '13/04/2023'),
(8, 13, '12:23:00', '07/02/2023'),
(9, 14, '20:10:00', '26/12/2022'),
(10, 13, '14:09:00', '10/12/2022'),
(9, 11, '12:48:00', '26/05/2022'),
(10, 12, '13:09:00', '17/04/2023');

insert into visualizacionesPrograma
values (4,1, '12:45:00','27/05/2023'),
(5, 2, '18:07:00', '13/03/2023'),
(5, 3, '19:19:00', '14/03/2023'),
(6, 4, '09:13:00', '13/05/2023'),
(7, 5, '10:21:00', '13/04/2023'),
(8, 6, '12:24:00', '08/02/2023'),
(9, 7, '20:12:00', '26/12/2022'),
(10, 8, '14:09:00', '10/12/2022'),
(9, 3, '12:40:00', '26/05/2022'),
(10, 2, '13:19:00', '17/04/2023');