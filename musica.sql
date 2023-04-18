CREATE TABLE artista (
    id_artista INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    oyentes INT (100) NOT NULL,
);

CREATE TABLE album (
    id_album INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    url_imagenport INT (100) NOT NULL,
    id_artista INT(10) NOT NULL,
    FOREIGN KEY (id_artista) REFERENCES artista (id_artista) ON DELETE CASCADE
);

CREATE TABLE playlist (
    id_playlist INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    duracion INT (100) NOT NULL,
);

CREATE TABLE usuario (
    id_usuario INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    correo VARCHAR (100) NOT NULL,
);


CREATE TABLE cancion (
    id_cancion INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    duracion INT (100) NOT NULL,
    disquera VARCHAR (30) NOT NULL,
);

CREATE TABLE cancion_artista (
    id_cancion_artista INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_cancion INT(10) NOT NULL,
    id_artista INT(10) NOT NULL,
    FOREIGN KEY ( id_cancion) REFERENCES cancion ( id_cancion) ON DELETE CASCADE,
    FOREIGN KEY (id_artista) REFERENCES artista (id_artista) ON DELETE CASCADE
);

CREATE TABLE cancion_playlist (
    id_cancion_playlist INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_cancion INT(10) NOT NULL,
    id_playlist INT(10) NOT NULL,
    FOREIGN KEY ( id_cancion) REFERENCES cancion ( id_cancion) ON DELETE CASCADE,
    FOREIGN KEY (id_playlist) REFERENCES playlist (id_playlist) ON DELETE CASCADE
);

CREATE TABLE usuario_playlist (
    id_usuario_playlist INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_usuario INT(10) NOT NULL,
    id_playlist INT(10) NOT NULL,
    FOREIGN KEY ( id_usuario) REFERENCES usuario ( id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_playlist) REFERENCES playlist (id_playlist) ON DELETE CASCADE
);

