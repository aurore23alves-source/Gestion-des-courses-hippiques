
INSERT INTO PERSONNE
(nom_personne, prenom_personne, age_personne, civilite_personne)
VALUES
('Martin', 'Lucas', '1995-04-12', 'M.'),
('Durand', 'Emma', '1998-09-23', 'Mme'),
('Bernard', 'Hugo', '1992-01-08', 'M.'),
('Petit', 'Chloe', '2000-06-17', 'Mme'),
('Lefevre', 'Antoine', '1978-03-15', 'M.'),
('Moreau', 'Sophie', '1983-11-02', 'Mme'),
('Rousseau', 'Paul', '1969-07-21', 'M.'),
('Garcia', 'Nina', '1987-02-14', 'Mme');


INSERT INTO JOCKEY
(id_jockey, classement_jockey, allocationGagnee_jockey)
VALUES
(1, NULL, 0),
(2, NULL, 0),
(3, NULL, 0),
(4, NULL, 0);


INSERT INTO ENTRAINEUR
(id_entraineur, localisation_entraineur)
VALUES
(5, 'Chantilly'),
(6, 'Deauville');


INSERT INTO PROPRIETAIRE
(id_proprietaire)
VALUES
(7),
(8);


INSERT INTO HIPPODROME
(nom_hippodrome)
VALUES
('Hippodrome de Chantilly'),
('Hippodrome de Deauville');


INSERT INTO CHEVAUX
(nom_cheval, age_cheval, couleur_cheval, specialite_cheval,
nomPere_cheval, nomMere_cheval, sexe_cheval,
id_entraineur, id_proprietaire)
VALUES
('Eclair du Nord', '2021-03-10', 'Bai', 'Galop',
'Soleil Royal', 'Belle Etoile', 'Mâle', 5, 7),

('Perle Blanche', '2020-05-18', 'Gris', 'Galop',
'Grand Duc', 'Lune d''Argent', 'Femelle', 5, 8),

('Tonnerre Bleu', '2019-02-05', 'Alezan', 'Obstacles',
'Roi des Pres', 'Fleur Sauvage', 'Mâle', 6, 7),

('Belle de Nuit', '2022-04-22', 'Noir', 'Trot',
'Prince Noir', 'Douce Nuit', 'Femelle', 6, 8),

('Vent d''Ouest', '2021-08-09', 'Bai brun', 'Galop',
'Vent Marin', 'Rose des Vents', 'Mâle', 5, 7),

('Etoile Filante', '2020-10-30', 'Alezan', 'Obstacles',
'Feu Follet', 'Etoile du Matin', 'Femelle', 6, 8);


INSERT INTO COURSE
(libelle_course, date_course, nbMaxCheval_course,
ageMin_course, ageMax_course, sexeCondition_course,
allocation1_course, allocation2_course, allocation3_course,
allocation4_course, allocation5_course, id_hippodrome)
VALUES
('Prix des Champions', '2026-10-10', 8,
3, 8, NULL, 15000, 7000, 4000, 2000, 1000, 1),

('Prix de Deauville', '2026-12-12', 6,
NULL, NULL, NULL, 12000, 6000, 3000, 1500, 750, 2),

('Prix des Espoirs', '2027-02-20', 5,
3, 7, 'Femelle', 10000, 5000, 2500, 1200, 600, 1);


INSERT INTO PARTICIPER
(id_jockey, id_cheval, id_course, classement_participer)
VALUES
(1, 1, 1, 1),
(2, 3, 1, 2),
(3, 5, 1, 3),
(4, 2, 1, 4),

(1, 2, 2, NULL),
(2, 4, 2, NULL),
(3, 6, 2, NULL),

(4, 2, 3, NULL),
(2, 4, 3, NULL),
(3, 6, 3, NULL);