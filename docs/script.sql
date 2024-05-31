CREATE TABLE Status(
   status_id SERIAL,
   status_title VARCHAR(50)  NOT NULL,
   PRIMARY KEY(status_id),
   UNIQUE(status_title)
);

CREATE TABLE Formations(
   formation_id SERIAL,
   formation_title VARCHAR(100)  NOT NULL,
   status_id INTEGER NOT NULL,
   PRIMARY KEY(formation_id),
   UNIQUE(formation_title),
   FOREIGN KEY(status_id) REFERENCES Status(status_id)
);

CREATE TABLE Tags(
   tag_id SERIAL,
   tag_title VARCHAR(100)  NOT NULL,
   PRIMARY KEY(tag_id),
   UNIQUE(tag_title)
);

CREATE TABLE Roles(
   role_id SERIAL,
   role_title VARCHAR(75)  NOT NULL,
   privilege_number SMALLINT NOT NULL,
   PRIMARY KEY(role_id),
   UNIQUE(role_title)
);

CREATE TABLE Users(
   user_id SERIAL,
   firstname VARCHAR(100)  NOT NULL,
   surname VARCHAR(100)  NOT NULL,
   email VARCHAR(200)  NOT NULL,
   password VARCHAR(255)  NOT NULL,
   teacher_code SMALLINT,
   is_active BOOLEAN NOT NULL,
   role_id INTEGER NOT NULL,
   PRIMARY KEY(user_id),
   UNIQUE(email),
   FOREIGN KEY(role_id) REFERENCES Roles(role_id)
);

CREATE TABLE Favorites(
   favorite_id SERIAL,
   modules JSONB,
   lessons JSONB,
   formations JSONB,
   user_id INTEGER NOT NULL,
   PRIMARY KEY(favorite_id),
   FOREIGN KEY(user_id) REFERENCES Users(user_id)
);

CREATE TABLE User_address(
   user_address_id SERIAL,
   street_number SMALLINT,
   street_name VARCHAR(125)  NOT NULL,
   city VARCHAR(125)  NOT NULL,
   postal_code VARCHAR(5)  NOT NULL,
   country VARCHAR(200)  NOT NULL,
   complementary_address TEXT,
   user_id INTEGER NOT NULL,
   PRIMARY KEY(user_address_id),
   FOREIGN KEY(user_id) REFERENCES Users(user_id)
);

CREATE TABLE Modules(
   module_id SERIAL,
   module_title VARCHAR(100)  NOT NULL,
   user_id INTEGER NOT NULL,
   status_id INTEGER NOT NULL,
   PRIMARY KEY(module_id),
   UNIQUE(module_title),
   FOREIGN KEY(user_id) REFERENCES Users(user_id),
   FOREIGN KEY(status_id) REFERENCES Status(status_id)
);

CREATE TABLE Lessons(
   lesson_id SERIAL,
   lesson_title VARCHAR(100)  NOT NULL,
   text TEXT,
   video TEXT,
   images JSONB,
   module_id INTEGER,
   status_id INTEGER NOT NULL,
   PRIMARY KEY(lesson_id),
   UNIQUE(lesson_title),
   FOREIGN KEY(module_id) REFERENCES Modules(module_id),
   FOREIGN KEY(status_id) REFERENCES Status(status_id)
);

CREATE TABLE learn(
   user_id INTEGER,
   module_id INTEGER,
   is_validate BOOLEAN NOT NULL,
   PRIMARY KEY(user_id, module_id),
   FOREIGN KEY(user_id) REFERENCES Users(user_id),
   FOREIGN KEY(module_id) REFERENCES Modules(module_id)
);

CREATE TABLE compose(
   module_id INTEGER,
   formation_id INTEGER,
   PRIMARY KEY(module_id, formation_id),
   FOREIGN KEY(module_id) REFERENCES Modules(module_id),
   FOREIGN KEY(formation_id) REFERENCES Formations(formation_id)
);

CREATE TABLE refers_to(
   tag_id INTEGER,
   lesson_id INTEGER,
   PRIMARY KEY(tag_id, lesson_id),
   FOREIGN KEY(tag_id) REFERENCES Tags(tag_id),
   FOREIGN KEY(lesson_id) REFERENCES Lessons(lesson_id)
);

CREATE TABLE follow(
   formation_id INTEGER,
   user_id INTEGER,
   PRIMARY KEY(formation_id, user_id),
   FOREIGN KEY(formation_id) REFERENCES Formations(formation_id),
   FOREIGN KEY(user_id) REFERENCES Users(user_id)
);
