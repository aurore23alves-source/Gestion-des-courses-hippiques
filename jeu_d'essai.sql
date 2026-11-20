
USE france_galop;

INSERT INTO personne
(id_personne, nom_personne, prenom_personne, age_personne, civilite_personne)
VALUES
(1, 'Dupont', 'Lucas', '1992-04-18', 'M.'),
(2, 'Martin', 'Chloé', '1995-09-02', 'Mme'),
(3, 'Bernard', 'Hugo', '1988-12-30', 'M.'),
(4, 'Leroy', 'Antoine', '1975-06-21', 'M.'),
(5, 'Moreau', 'Camille', '1980-02-09', 'Mme'),
(6, 'Petit', 'Sophie', '1970-11-05', 'Mme'),
(7, 'Roux', 'Julien', '1968-07-14', 'M.');

INSERT INTO jockey (id_jockey)
VALUES (1), (2), (3);

INSERT INTO entraineur (id_entraineur, localisation_entraineur)
VALUES
(4, 'Chantilly'),
(5, 'Maisons-Laffitte');

INSERT INTO proprietaire (id_proprietaire)
VALUES (6), (7);

INSERT INTO hippodrome (id_hippodrome, nom_hippodrome)
VALUES
(1, 'Longchamp'),
(2, 'Auteuil'),
(3, 'Vincennes');

INSERT INTO chevaux
(id_cheval, nom_cheval, age_cheval, couleur_cheval,
specialite_cheval, nomPere_cheval, nomMere_cheval,
sexe_cheval, id_entraineur, id_proprietaire)
VALUES
(1, 'Éclair du Matin', '2021-03-14', 'Bai',
'Galop', 'Vent de Sable', 'Nuit Claire', 'Mâle', 4, 6),

(2, 'Belle Étoile', '2022-05-02', 'Alezan',
'Galop', 'Grand Soleil', 'Douce Brise', 'Femelle', 4, 6),

(3, 'Tonnerre', '2020-02-20', 'Noir',
'Obstacles', 'Orage Noir', 'Pluie Fine', 'Mâle', 5, 7),

(4, 'Lune d''Argent', '2021-04-11', 'Gris',
'Trot', 'Roi du Nord', 'Étoile Filante', 'Femelle', 5, 7),

(5, 'Vent d''Ouest', '2019-01-25', 'Bai foncé',
'Obstacles', 'Brise Marine', 'Aube Rose', 'Mâle', 4, 7),

(6, 'Perle Rare', '2022-03-30', 'Alezan',
'Galop', 'Grand Soleil', 'Nuit Claire', 'Femelle', 5, 6);

INSERT INTO course
(id_course, libelle_course, date_course, nbMaxCheval_course,
ageMin_course, ageMax_course, sexeCondition_course,
allocation1_course, allocation2_course, allocation3_course,
allocation4_course, allocation5_course, id_hippodrome)
VALUES
(1, 'Prix de Longchamp', '2026-12-05', 4, 3, 6, NULL,
20000.00, 8000.00, 4000.00, 2000.00, 1000.00, 1),

(2, 'Prix des Dames', '2026-12-12', 5, NULL, NULL, 'Femelle',
15000.00, 6000.00, 3000.00, 1500.00, 800.00, 2),

(3, 'Grand Steeple', '2026-12-20', 6, NULL, NULL, NULL,
30000.00, 12000.00, 6000.00, 3000.00, 1500.00, 3);

INSERT INTO participer
(id_jockey, id_cheval, id_course, classement_participer)
VALUES
(1, 1, 1, NULL),
(2, 2, 1, NULL),
(3, 3, 1, NULL),
(2, 2, 2, NULL),
(1, 4, 2, NULL),
(3, 6, 2, NULL),
(1, 3, 3, NULL),
(2, 5, 3, NULL);
