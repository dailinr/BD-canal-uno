create table if not exists Horarios(
	idHorario int primary key,
	dia varchar(15) not null,
	horaInicio time not null,
	horaFinalizacion time not null
);

create table if not exists Autores(
	idAutor int primary key,
	ocupacion varchar(200) not null,
	urlFoto varchar(200) not null,
	nombre varchar(100) not null,
	apellido varchar(100) not null
);

create table if not exists Stories(
	idStorie int primary key,
	urlImagen varchar(255) not null,
	fuenteImagen varchar(200) not null,
	descripcion varchar(255) not null
);

create table if not exists Episodios(
	idEpisodio int primary key,
	link varchar(255) not null,
	titulo varchar(200) not null,
	idPrograma int not null
);

create table if not exists TelefonosCanal(
	idTelefono int primary key,
	numeroTelefono bigint not null check (numeroTelefono > 0)
);

create table if not exists Correos(
	idCorreo int primary key,
	email varchar(200) not null unique
);

create table if not exists RedesSociales(
	idRedSocial int primary key,
	tipo varchar(200) not null,
	link varchar(255) not null
);

create table if not exists Mascotas(
	idMascota int primary key,
	urlFotoMascota varchar(255) not null,
	celular bigint not null check (celular > 0),
	tipoMascota varchar(200) not null check (tipoMascota in('Perro','gato','perro','Gato') ),
	zona varchar(200) not null,
	ciudad varchar(200) not null,
	ultimaVezVisto date not null,
	categoria varchar(200) not null,
	correo varchar(200) not null,
	nombre varchar(200) not null,
	descripcion varchar(255) not null
);

create table if not exists LugaresFalla(
	idLugarFalla int primary key,
	tipoZonaRural varchar(200) not null,
	ciudad varchar(100) not null,
	departamento varchar(100) not null,
	direccion varchar(150) not null
);

create table if not exists Usuarios(
	identificacion int primary key,
	telefono bigint not null check(telefono > 0),
	pais varchar(100) not null,
	correo varchar(200) not null unique,
	edad integer not null,
	nombre varchar(200) not null,
	apellido varchar(200) not null
);

create table if not exists Categorias(
	idCategoria int primary key,
	tipoArticulo varchar(100) not null,
	nombre varchar(100) not null
);

alter table Categorias
add constraint categoriasValidas
check(
	(nombre in ('nacional','bogota','mundo', 'deportes', 'economia', 'empresas', '1opina', 'politica') 
	and tipoArticulo like 'noticias')	
	or 
	(nombre in ('entretenimiento','virales','ideas utiles', 'estilo de vida') 
	and tipoArticulo like 'entretenimiento')
);

create table if not exists Articulos(
	idArticulo int primary key,
	titulo varchar(150) not null,
	contenidoDelArticulo varchar not null,
	temasRelacionados varchar(200) not null,  
	fechaPublicacion date not null check (fechaPublicacion <= now()),
	horaPublicacion time not null,
	fuenteDeInformacion varchar(200) not null,
	UrlImagenPortada varchar(200) null,
	idCategoria int not null,
	idAutor int null,
	foreign key (idCategoria) references Categorias(idCategoria),
	foreign key (idAutor) references Autores(idAutor)
);

create table if not exists VisualizacionesArticulo(
	idArticulo int not null,
	idUsuario int not null ,
	fechaVisualizacion date not null check (fechaVisualizacion <= now()),
	horaVisualizacion time not null,
	primary key(idArticulo, idUsuario),
	foreign key (idArticulo) references Articulos(idArticulo),
	foreign key (idUsuario) references Usuarios(identificacion)
);

create table if not exists VisualizacionesMascota(
	idMascota int not null,
	idUsuario int not null,
	fecha date not null check (fecha <= now()),
	hora time not null,
	primary key(idMascota, idUsuario),
	foreign key (idMascota) references Mascotas(idMascota),
	foreign key (idUsuario) references Usuarios(identificacion)
);

create table if not exists VisualizacionesStories(
	idStorie int not null,
	idUsuario int not null,
	fecha date not null check (fecha <= now()),
	hora time not null,
	primary key(idStorie, idUsuario),
	foreign key (idStorie) references Stories(idStorie),
	foreign key (idUsuario) references Usuarios(identificacion)
	
);

create table if not exists Programas(
	idPrograma int primary key,
	urlImagenPortada varchar(200) not null,
	closedCaption boolean not null,
	sinopsis varchar(400) null,
	streaming boolean not null,
	descripcionCorta varchar(200) not null,
	nombre varchar(150) not null	
);

alter table Episodios
add foreign key (idPrograma) references Programas(idPrograma);

create table if not exists Emisiones(
	idPrograma int not null,
	idHorario int not null,
	primary key(idPrograma, idHorario),
	foreign key (idPrograma) references Programas(idPrograma),
	foreign key (idHorario) references Horarios(idHorario)
);

create table if not exists Sugerencias(
	idSugerencia int primary key,
	comentario varchar(300) not null,
	idUsuario int not null,
	idPrograma int not null,
	foreign key (idUsuario) references Usuarios(identificacion),
	foreign key (idPrograma) references Programas(idPrograma)
);

create table if not exists ReportesSeñal(
	idReporte int primary key,
	horaFalla time not null,
	formaVisualizacion varchar(200) not null,
	fechaFalla date not null check (fechaFalla <= now()),
	descripcionFalla varchar(300) null,
	tipoFalla varchar(300) null,
	tipoAntena varchar(300) null,
	tipoSeñal varchar(300) null,
	idUsuario int not null,
	idLugarFalla int not null,
	foreign key (idUsuario) references Usuarios(identificacion),
	foreign key (idLugarFalla) references LugaresFalla(idLugarFalla)
);


create table if not exists ArchivosMultimedia(
	idArchivo int primary key,
	fuente varchar(200) null,
	idArticulo int null,
	foreign key (idArticulo) references Articulos(idArticulo)
);

create table if not exists VisualizacionesPrograma(
	idUsuario int not null,
	idPrograma int not null,
	hora time not null,
	fecha date not null check (fecha <= now()),
	primary key(idUsuario, idPrograma),
	foreign key (idUsuario) references Usuarios(identificacion),
	foreign key (idPrograma) references Programas(idPrograma)
);

create table if not exists VisualizacionesVideo(
	idUsuario int not null,
	idVideo int not null,
	hora time not null,
	fecha date not null check (fecha <= now()),
	primary key(idUsuario, idVideo),
	foreign key (idUsuario) references Usuarios(identificacion)
);

create table if not exists Imagenes(
	idImagen int primary key,
	urlImagen varchar(200) not null,
	foreign key (idImagen) references ArchivosMultimedia(idArchivo)
);

create table if not exists Videos(
	idVideo int primary key,
	horaDePublicacion time not null,
	fechaDePublicacion date not null check (fechaDePublicacion <= now()),
	linkArticulo varchar(200) null,
	titulo varchar(200) not null,
	enlace varchar(200) not null,
	Hastag varchar(100) not null,
	descripcion varchar(300) not null,
	foreign key (idVideo) references ArchivosMultimedia(idArchivo)
);

alter table VisualizacionesVideo
add foreign key (idVideo) references Videos(idVideo);

create table if not exists ContactosDelCanal(
	idContacto int primary key,
	idTelefono int not null,
	idCorreo int not null,
	idRedSocial int not null,
	foreign key (idTelefono) references TelefonosCanal(idTelefono),
	foreign key (idCorreo) references Correos(idCorreo),
	foreign key (idRedSocial) references RedesSociales(idRedSocial)
);