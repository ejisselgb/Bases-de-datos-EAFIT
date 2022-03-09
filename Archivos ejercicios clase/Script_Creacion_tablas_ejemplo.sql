CREATE DATABASE "EafitMovie";

CREATE TABLE "Usuario" (
    id SERIAL PRIMARY KEY,
    nombre_completo VARCHAR(20),
    edad INT
    -- CONSTRAINT "nombre" PRIMARY KEY (id)
);

CREATE TABLE "PeliculasRentadas" (
    id_usuario SERIAL,
    id_pelicula SERIAL,
    fecha_prestamo DATE,
    fecha_devolucion DATE,
    estado BOOLEAN,
    CONSTRAINT "fk_usuario" FOREIGN KEY (id_usuario) REFERENCES "Usuario"(id),
    CONSTRAINT "fk_pelicula" FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
    CONSTRAINT "id_pelicula_rentada" PRIMARY KEY (id_usuario, id_pelicula, fecha_prestamo)
);