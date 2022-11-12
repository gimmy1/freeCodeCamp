-- Create Database universe
-- CREATE DATABASE universe;

-- connect to database
-- \c universe

CREATE TYPE galaxy_type as ENUM
('elliptical', 'spiral', 'irregular');

CREATE TABLE galaxy
(
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR (30) UNIQUE NOT NULL,
    type galaxy_type NOT NULL,
    color VARCHAR (30) NOT NULL,
    diameter NUMERIC (10,3) NOT NULL,
    mass NUMERIC (10,3) NOT NULL
);

CREATE TABLE star
(
    star_id SERIAL PRIMARY KEY,
    name VARCHAR (30) UNIQUE NOT NULL,
    galaxy_id INT,
    is_sun BOOLEAN NOT NULL DEFAULT False,
    constellation_name TEXT DEFAULT NULL,
    FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id)
);

CREATE TABLE planet
(
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR (30) UNIQUE NOT NULL,
    star_id INT,
    has_inhabitants BOOLEAN NOT NULL DEFAULT False,
    number_of_moons INT NOT NULL DEFAULT 0,
    FOREIGN KEY (star_id) REFERENCES star (star_id)
);

CREATE TABLE moon
(
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR (30) UNIQUE NOT NULL,
    planet_id INT,
    temperature NUMERIC(10,5) NOT NULL,
    mass NUMERIC (10,5) NOT NULL,
    FOREIGN KEY (planet_id) REFERENCES planet (planet_id)
);

ALTER TABLE moon ADD COLUMN description TEXT;

CREATE TABLE lifeform
(
    lifeform_id SERIAL PRIMARY KEY,
    lifespan INTEGER,
    name CHARACTER VARYING (255) UNIQUE NOT NULL
);



CREATE TABLE planet_lifeform
(
    planet_id INT REFERENCES planet (planet_id),
    lifeform_id INT REFERENCES lifeform (lifeform_id)
);

ALTER TABLE planet_lifeform ADD CONSTRAINT planet_life PRIMARY KEY(planet_id, lifeform_id);