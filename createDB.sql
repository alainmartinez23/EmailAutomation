-- Query para crear la tabla

CREATE TABLE usuarios_registrados(
	id INTEGER PRIMARY KEY,
	nombre TEXT(50) NOT NULL,
	apellidos TEXT(50),
	email TEXT(50) NOT NULL,
	ciudad TEXT(40)
)

-- Inserciones de ejemplo

INSERT INTO usuarios_registrados(id, nombre, apellidos, email, ciudad) VALUES (1, "Pedro", "Santos", "ejemplo1@gmail.com", "Sevilla")
INSERT INTO usuarios_registrados(id, nombre, apellidos, email, ciudad) VALUES (2, "Marta", "González", "ejemplo2@gmail.com", "Tarragona")
INSERT INTO usuarios_registrados(id, nombre, apellidos, email, ciudad) VALUES (3, "Lucía", "Martínez", "ejemplo3@gmail.com", "Madrid")
INSERT INTO usuarios_registrados(id, nombre, email, ciudad) VALUES (4, "José Manuel", "ejemplo4@gmail.com", "Pontevedra")
INSERT INTO usuarios_registrados(id, nombre, email, ciudad) VALUES (5, "Peter", "ejemplo5@gmail.com", "Londres")
INSERT INTO usuarios_registrados(id, nombre, email) VALUES (6, "Jurgen", "ejemplo6@gmail.com")
INSERT INTO usuarios_registrados(id, nombre, email) VALUES (7, "Luke", "ejemplo7@gmail.com")