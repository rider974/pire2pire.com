CREATE TABLE status(
   id_status SERIAL,
   status_title VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_status),
   UNIQUE(status_title)
);

CREATE TABLE formations(
   id_formation SERIAL,
   formation_title VARCHAR(100)  NOT NULL,
   id_status INTEGER NOT NULL,
   PRIMARY KEY(id_formation),
   UNIQUE(formation_title),
   FOREIGN KEY(id_status) REFERENCES status(id_status)
);

CREATE TABLE tags(
   id_tag SERIAL,
   tag_title VARCHAR(100)  NOT NULL,
   PRIMARY KEY(id_tag),
   UNIQUE(tag_title)
);

CREATE TABLE roles(
   id_role SERIAL,
   role_title VARCHAR(75)  NOT NULL,
   privilege_number SMALLINT NOT NULL,
   PRIMARY KEY(id_role),
   UNIQUE(role_title)
);

CREATE TABLE users(
   id_user SERIAL,
   firstname VARCHAR(100)  NOT NULL,
   surname VARCHAR(100)  NOT NULL,
   street_name VARCHAR(75) ,
   street_number VARCHAR(10) ,
   zip_code CHAR(10) ,
   city VARCHAR(75) ,
   additionnal_adress TEXT,
   email VARCHAR(200)  NOT NULL,
   password VARCHAR(255)  NOT NULL,
   teacher_code SMALLINT,
   is_active BOOLEAN NOT NULL,
   id_role INTEGER NOT NULL,
   PRIMARY KEY(id_user),
   UNIQUE(email),
   FOREIGN KEY(id_role) REFERENCES roles(id_role)
);

CREATE TABLE favorites(
   id_favorite SERIAL,
   modules JSONB,
   lessons JSONB,
   formations JSONB,
   id_user INTEGER NOT NULL,
   PRIMARY KEY(id_favorite),
   FOREIGN KEY(id_user) REFERENCES users(id_user)
);

CREATE TABLE modules(
   id_module SERIAL,
   module_title VARCHAR(100)  NOT NULL,
   id_user INTEGER NOT NULL,
   id_status INTEGER NOT NULL,
   PRIMARY KEY(id_module),
   UNIQUE(module_title),
   FOREIGN KEY(id_user) REFERENCES users(id_user),
   FOREIGN KEY(id_status) REFERENCES status(id_status)
);

CREATE TABLE lessons(
   id_lesson SERIAL,
   lesson_title VARCHAR(100)  NOT NULL,
   text TEXT,
   video TEXT,
   images JSONB,
   id_module INTEGER,
   id_status INTEGER NOT NULL,
   PRIMARY KEY(id_lesson),
   UNIQUE(lesson_title),
   FOREIGN KEY(id_module) REFERENCES modules(id_module),
   FOREIGN KEY(id_status) REFERENCES status(id_status)
);

CREATE TABLE lessons_tags(
   id_tag INTEGER,
   id_lesson INTEGER,
   PRIMARY KEY(id_tag, id_lesson),
   FOREIGN KEY(id_tag) REFERENCES tags(id_tag),
   FOREIGN KEY(id_lesson) REFERENCES lessons(id_lesson)
);

CREATE TABLE formation_module(
   id_formation INTEGER,
   id_module INTEGER,
   PRIMARY KEY(id_formation, id_module),
   FOREIGN KEY(id_formation) REFERENCES formations(id_formation),
   FOREIGN KEY(id_module) REFERENCES modules(id_module)
);

CREATE TABLE formations_followed(
   id_formation INTEGER,
   id_user INTEGER,
   PRIMARY KEY(id_formation, id_user),
   FOREIGN KEY(id_formation) REFERENCES formations(id_formation),
   FOREIGN KEY(id_user) REFERENCES users(id_user)
);

CREATE TABLE modules_followed(
   id_module INTEGER,
   id_user INTEGER,
   ok BOOLEAN,
   PRIMARY KEY(id_module, id_user),
   FOREIGN KEY(id_module) REFERENCES modules(id_module),
   FOREIGN KEY(id_user) REFERENCES users(id_user)
);
