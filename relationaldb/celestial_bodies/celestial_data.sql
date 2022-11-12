--
-- Data for Name: galaxy
--

INSERT INTO galaxy
    (name, type, color, diameter, mass)
VALUES
    ('Milky Way', 'elliptical', '#FFFFFF', 20.916, 133.33),
    ('Republic', 'elliptical', '#FFDGBC', 12.182, 53.33),
    ('Andromeda', 'spiral', '#B200DF', 23.345, 443.33),
    ('Garbok', 'spiral', '#B211DF', 2233.234, 4243.33),
    ('Vibros', 'irregular', '#A211EF', 10.454, 33.33),
    ('Misk', 'elliptical', '#CC23DF', 3.343, 23.34);

--
-- Data for Name: star
--

INSERT INTO star
    (name, galaxy_id, is_sun, constellation_name)
VALUES
    ('Sol', 1, True, 'G'),
    ('Coruscant', 2, False, 'B'),
    ('LHS 20', 1, False, 'M'),
    ('Franklins Rest', 3, False, 'A'),
    ('Oberon', 4, False, 'O'),
    ('Bisk', 6, True, 'T');

--
-- Data for Name: planet
--

INSERT INTO planet
    (name, star_id, has_inhabitants, number_of_moons)
VALUES
    ('Earth', 1, True, 1),
    ('Mars', 1, True, 2),
    ('Coruscant', 2, True, 3),
    ('LHS 20 A 1', 3, True, 4),
    ('LHS 20 A 3', 3, True, 5),
    ('LHS 20 A 4', 6, True, 4),
    ('Franklins Keep', 4, True, 11),
    ('Sigint', 4, True, 20),
    ('Barre', 4, True, 8),
    ('Omicron', 5, True, 9),
    ('Omega', 6, True, 2),
    ('Omigosh', 5, True, 3);

--
-- Data for Name: moon
--

INSERT INTO moon
    (name, planet_id, description, temperature, mass)
VALUES
    ('Luna', 1, 'Rocks and dust make such a pretty nightlight.', 2389.3434, 678.9876),
    ('Phobos', 2, 'Fear.', 289.3434, 678.9876),
    ('Deimos', 2, 'Panic.', 229.3434, 678.9876),
    ('Centax-1', 3, 'Colonized.', 1212.3434, 678.9876),
    ('Centax-2', 3, 'Colonized.', 1412.3434, 678.9876),
    ('Hesperidium', 3, 'A new home.', 86.3434, 678.9876),
    ('LHS 20 A 1 A', 4, 'Rocky satellite.', 36.3434, 678.9876),
    ('LHS 20 A 1 B', 4, 'Rocky satellite.', 73.3434, 678.9876),
    ('LHS 20 A 1 C', 4, 'Icy satellite.', 732.3434, 678.9876),
    ('LHS 20 A 2 D', 5, 'Rocky satellite. Barely in orbit.', 7391.3434, 678.9876),
    ('LHS 20 A 4 c', 5, 'Icy sattelite.', 717.3434, 678.9876),
    ('Franklins Inheritance', 7, 'Rodriga Franklin, Daughter of Geraldine, owns this now.', 736.3434, 678.9876),
    ('Otomatone', 10, 'Moon music lulled us to sleep.', 73.3434, 678.9876),
    ('Okidokie', 11, 'With eyes on her, all was well.', 7358.3434, 678.9876);

--
-- Data for Name: lifeform
--

INSERT INTO lifeform
    (lifespan, name)
VALUES
    (110, 'Human'),
    (3000, 'Thargoid'),
    (2400, 'Obelisks');


-- INSERT INTO planet_lifeform
--     (planet_id, lifeform_id)
-- VALUES
--     (3, 1),
--     (1, 1),
--     (10, 2),
--     (7, 3),
--     (5, 3);
