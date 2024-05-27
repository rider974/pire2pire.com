# Modèle Physique de Données (MPD)

### Table : `status`
- `id_status` : SERIAL, PRIMARY KEY
- `status_title` : VARCHAR(50), UNIQUE 

### Table : `formations`
- `id_formation` : SERIAL, PRIMARY KEY
- `formation_title` : VARCHAR(100), UNIQUE, NOT NULL
- `id_status` : INTEGER, NOT NULL, FOREIGN KEY REFERENCES `status(id_status)`

### Table : `tags`
- `id_tag` : SERIAL, PRIMARY KEY
- `tag_title` : VARCHAR(100), UNIQUE, NOT NULL

### Table : `roles`
- `id_role` : SERIAL, PRIMARY KEY
- `role_title` : VARCHAR(75), UNIQUE, NOT NULL
- `privilege_number` : SMALLINT

### Table : `users`
- `id_user` : SERIAL, PRIMARY KEY
- `firstname` : VARCHAR(100), NOT NULL
- `surname` : VARCHAR(100), NOT NULL
- `street_name` : VARCHAR(75)
- `street_number` : VARCHAR(10)
- `zip_code` : CHAR(10)
- `city` : VARCHAR(75)
- `additionnal_adress` : TEXT
- `email` : VARCHAR(200), UNIQUE
- `password` : VARCHAR(255)
- `teacher_code` : SMALLINT
- `is_active` : BOOLEAN
- `id_role` : INTEGER, NOT NULL, FOREIGN KEY REFERENCES `roles(id_role)`

### Table : `favorites`
- `id_favorite` : SERIAL, PRIMARY KEY
- `modules` : JSONB
- `lessons` : JSONB
- `formations` : JSONB
- `id_user` : INTEGER, NOT NULL, FOREIGN KEY REFERENCES `users(id_user)`

### Table : `modules`
- `id_module` : SERIAL, PRIMARY KEY
- `module_title` : VARCHAR(100), UNIQUE, NOT NULL
- `id_user` : INTEGER, NOT NULL, FOREIGN KEY REFERENCES `users(id_user)`
- `id_status` : INTEGER, NOT NULL, FOREIGN KEY REFERENCES `status(id_status)`

### Table : `lessons`
- `id_lesson` : SERIAL, PRIMARY KEY
- `lesson_title` : VARCHAR(100), UNIQUE, NOT NULL
- `text` : TEXT
- `video` : TEXT
- `images` : JSONB
- `id_module` : INTEGER, FOREIGN KEY REFERENCES `modules(id_module)`
- `id_status` : INTEGER, NOT NULL, FOREIGN KEY REFERENCES `status(id_status)`

### Table : `lessons_tags`
- `id_tag` : INTEGER, PRIMARY KEY
- `id_lesson` : INTEGER, PRIMARY KEY
- FOREIGN KEY (`id_tag`) REFERENCES `tags(id_tag)`
- FOREIGN KEY (`id_lesson`) REFERENCES `lessons(id_lesson)`

### Table : `formation_module`
- `id_formation` : INTEGER, PRIMARY KEY
- `id_module` : INTEGER, PRIMARY KEY
- FOREIGN KEY (`id_formation`) REFERENCES `formations(id_formation)`
- FOREIGN KEY (`id_module`) REFERENCES `modules(id_module)`

### Table : `formations_followed`
- `id_formation` : INTEGER, PRIMARY KEY
- `id_user` : INTEGER, PRIMARY KEY
- FOREIGN KEY (`id_formation`) REFERENCES `formations(id_formation)`
- FOREIGN KEY (`id_user`) REFERENCES `users(id_user)`

### Table : `modules_followed`
- `id_module` : INTEGER, PRIMARY KEY
- `id_user` : INTEGER, PRIMARY KEY
- `ok` : BOOLEAN
- FOREIGN KEY (`id_module`) REFERENCES `modules(id_module)`
- FOREIGN KEY (`id_user`) REFERENCES `users(id_user)`


