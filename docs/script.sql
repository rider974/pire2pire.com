CREATE TABLE Status(
   id_status SERIAL,
   intitule_status VARCHAR(50) ,
   PRIMARY KEY(id_status)
);

CREATE TABLE Formations(
   id_formation SERIAL,
   intitule_formation VARCHAR(100)  NOT NULL,
   id_status INTEGER NOT NULL,
   PRIMARY KEY(id_formation),
   FOREIGN KEY(id_status) REFERENCES Status(id_status)
);

CREATE TABLE Tags(
   id_tag SERIAL,
   intitule_tag VARCHAR(100)  NOT NULL,
   PRIMARY KEY(id_tag)
);

CREATE TABLE Roles(
   id_role SERIAL,
   intitule_role VARCHAR(75)  NOT NULL,
   niveau_privilege SMALLINT,
   PRIMARY KEY(id_role)
);

CREATE TABLE Utilisateurs(
   id_utilisateur SERIAL,
   prenom VARCHAR(100)  NOT NULL,
   nom VARCHAR(100)  NOT NULL,
   nom_rue VARCHAR(75) ,
   num_rue VARCHAR(10) ,
   code_postal CHAR(10) ,
   ville VARCHAR(75) ,
   complement_adresse TEXT,
   email VARCHAR(200) ,
   mot_de_passe VARCHAR(255) ,
   code_formateur SMALLINT,
   est_actif BOOLEAN,
   id_role INTEGER NOT NULL,
   PRIMARY KEY(id_utilisateur),
   FOREIGN KEY(id_role) REFERENCES Roles(id_role)
);

CREATE TABLE Favoris(
   id_favoris SERIAL,
   modules JSON,
   cours JSON,
   formations JSON,
   id_utilisateur INTEGER NOT NULL,
   PRIMARY KEY(id_favoris),
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateurs(id_utilisateur)
);

CREATE TABLE Modules(
   id_module SERIAL,
   intitule_module VARCHAR(100)  NOT NULL,
   id_utilisateur INTEGER NOT NULL,
   id_status INTEGER NOT NULL,
   PRIMARY KEY(id_module),
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateurs(id_utilisateur),
   FOREIGN KEY(id_status) REFERENCES Status(id_status)
);

CREATE TABLE Cours(
   id_cours SERIAL,
   intitule_cours VARCHAR(100)  NOT NULL,
   texte TEXT,
   video TEXT,
   images BYTEA,
   id_module INTEGER,
   id_status INTEGER NOT NULL,
   PRIMARY KEY(id_cours),
   FOREIGN KEY(id_module) REFERENCES Modules(id_module),
   FOREIGN KEY(id_status) REFERENCES Status(id_status)
);

CREATE TABLE cours_tags(
   id_tag INTEGER,
   id_cours INTEGER,
   PRIMARY KEY(id_tag, id_cours),
   FOREIGN KEY(id_tag) REFERENCES Tags(id_tag),
   FOREIGN KEY(id_cours) REFERENCES Cours(id_cours)
);

CREATE TABLE formation_module(
   id_formation INTEGER,
   id_module INTEGER,
   PRIMARY KEY(id_formation, id_module),
   FOREIGN KEY(id_formation) REFERENCES Formations(id_formation),
   FOREIGN KEY(id_module) REFERENCES Modules(id_module)
);

CREATE TABLE formations_suivi(
   id_formation INTEGER,
   id_utilisateur INTEGER,
   PRIMARY KEY(id_formation, id_utilisateur),
   FOREIGN KEY(id_formation) REFERENCES Formations(id_formation),
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateurs(id_utilisateur)
);

CREATE TABLE modules_suivis(
   id_module INTEGER,
   id_utilisateur INTEGER,
   est_valide BOOLEAN,
   PRIMARY KEY(id_module, id_utilisateur),
   FOREIGN KEY(id_module) REFERENCES Modules(id_module),
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateurs(id_utilisateur)
);
