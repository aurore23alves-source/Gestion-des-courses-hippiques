
CREATE DATABASE IF NOT EXISTS france_galop;
USE france_galop;

CREATE TABLE personne (
    id_personne INT AUTO_INCREMENT PRIMARY KEY,
    nom_personne VARCHAR(50) NOT NULL,
    prenom_personne VARCHAR(50) NOT NULL,
    age_personne DATE NOT NULL,
    civilite_personne ENUM('M.','Mme') NOT NULL
) ENGINE=InnoDB;

CREATE TABLE jockey (
    id_jockey INT PRIMARY KEY,
    classement_jockey INT NULL,
    allocationGagnee_jockey DECIMAL(12,2) NULL,
    FOREIGN KEY (id_jockey)
        REFERENCES personne(id_personne)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (classement_jockey IS NULL OR classement_jockey >= 1)
) ENGINE=InnoDB;

CREATE TABLE entraineur (
    id_entraineur INT PRIMARY KEY,
    localisation_entraineur VARCHAR(150) NOT NULL,
    FOREIGN KEY (id_entraineur)
        REFERENCES personne(id_personne)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE proprietaire (
    id_proprietaire INT PRIMARY KEY,
    FOREIGN KEY (id_proprietaire)
        REFERENCES personne(id_personne)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE hippodrome (
    id_hippodrome INT AUTO_INCREMENT PRIMARY KEY,
    nom_hippodrome VARCHAR(120) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE chevaux (
    id_cheval INT AUTO_INCREMENT PRIMARY KEY,
    nom_cheval VARCHAR(100) NOT NULL,
    age_cheval DATE NOT NULL,
    couleur_cheval VARCHAR(50) NOT NULL,
    specialite_cheval ENUM('Galop','Obstacles','Trot') NOT NULL,
    nomPere_cheval VARCHAR(100) NOT NULL,
    nomMere_cheval VARCHAR(100) NOT NULL,
    sexe_cheval ENUM('Mâle','Femelle') NOT NULL,
    id_entraineur INT NOT NULL,
    id_proprietaire INT NOT NULL,
    FOREIGN KEY (id_entraineur)
        REFERENCES entraineur(id_entraineur),
    FOREIGN KEY (id_proprietaire)
        REFERENCES proprietaire(id_proprietaire)
) ENGINE=InnoDB;

CREATE TABLE course (
    id_course INT AUTO_INCREMENT PRIMARY KEY,
    libelle_course VARCHAR(120) NOT NULL,
    date_course DATE NOT NULL,
    nbMaxCheval_course INT NOT NULL,
    ageMin_course TINYINT UNSIGNED NULL,
    ageMax_course TINYINT UNSIGNED NULL,
    sexeCondition_course ENUM('Mâle','Femelle') NULL,
    allocation1_course DECIMAL(12,2) NOT NULL,
    allocation2_course DECIMAL(12,2) NOT NULL,
    allocation3_course DECIMAL(12,2) NOT NULL,
    allocation4_course DECIMAL(12,2) NOT NULL,
    allocation5_course DECIMAL(12,2) NOT NULL,
    arriveeValidee_course BOOLEAN NOT NULL DEFAULT FALSE,
    id_hippodrome INT NOT NULL,
    FOREIGN KEY (id_hippodrome)
        REFERENCES hippodrome(id_hippodrome),
    CHECK (nbMaxCheval_course > 0),
    CHECK (
        ageMin_course IS NULL
        OR ageMax_course IS NULL
        OR ageMin_course <= ageMax_course
    )
) ENGINE=InnoDB;

CREATE TABLE participer (
    id_jockey INT NOT NULL,
    id_cheval INT NOT NULL,
    id_course INT NOT NULL,
    classement_participer INT NULL,

    PRIMARY KEY (id_jockey, id_cheval, id_course),

    UNIQUE (id_course, id_cheval),
    UNIQUE (id_course, classement_participer),

    FOREIGN KEY (id_jockey)
        REFERENCES jockey(id_jockey),
    FOREIGN KEY (id_cheval)
        REFERENCES chevaux(id_cheval),
    FOREIGN KEY (id_course)
        REFERENCES course(id_course),

    CHECK (
        classement_participer IS NULL
        OR classement_participer >= 1
    )
) ENGINE=InnoDB;
