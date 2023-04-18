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


INSERT INTO artista (nombre, oyentes) VALUES
('Fen',5000),
('Hadd',5000),
('Boli',5000),
('Mino',5000),
('Tebi',5000);

INSERT INTO album (nombre, url_imagenport, id_artista) VALUES
('POST MOTEM',".com",1),
('DIE LIT',".com",2),
('HWR',".com",3),
('XCAPE',".com",4),
('27-',".com",5);

INSERT INTO playlist (nombre, duracion) VALUES
('Alegre',5),
('Feliz',5),
('Enojado',5),
('Sad',5),
('Melancolic',5);

INSERT INTO usuario (nombre, correo) VALUES
('Kaleft',"@example.com"),
('Salazar',"@example.com"),
('Sanchez',"@example.com"),
('Nose',"@example.com"),
('Quienmas',"@example.com");

INSERT INTO cancion (nombre, duracion, disquera) VALUES
('ComeAsUAre',6,"BohemianGrove"),
('Eso',5,"BohemianGrove"),
('Neo Tokyo',4,"BohemianGrove"),
('Bohemian Rapsody',8,"BohemianGrove"),
('Dont Cry',4,"BohemianGrove");


INSERT INTO cancion_artista (id_cancion, id_artista) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

INSERT INTO cancion_playlist (id_cancion, id_playlist) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

INSERT INTO usuario_playlist (id_usuario, id_playlist) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

UPDATE artista SET nombre = "Kaleft" WHERE id_artista = 1;
UPDATE artista SET nombre = "Mino" WHERE id_artista = 3;
UPDATE artista SET nombre = "Hadd" WHERE id_artista = 2;

DELETE FROM artista WHERE id_artista = 1;
DELETE FROM album WHERE id_album = 2;
DELETE FROM cancion WHERE id_cancion= 3;

