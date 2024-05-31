|Entité  | Name                      | Type          | Longeur | Contraintes| Description                                                         | Example
| ------------------------  | ------------- | ------------------------------------------------------------------- | -------------------| ---------------| -------------|----------
| Status       | <u>**status_id**</u>      | INTEGER AUTO_INCREMENT | 11   |  PRIMARY KEY, UNIQUE, NOT NULL     | This is a unique status id                                          | 4
|             | status_title              | VARCHAR | 50    |    UNIQUE, NOT NULL                                 |This is a unique title for a status                                 | Archive
| Formations    | <u>**formation_id**</u>   | INTEGER AUTO_INCREMENT | 11  | PRIMARY KEY, UNIQUE, NOT NULL       | This is a unique formation id                                       | 2
|             | formation_title           | VARCHAR | 100  |    UNIQUE, NOT NULL                                 |This is a unique title for a formation                              | Formation Docker
|             | status_id                 | INTEGER | 11  | FOREIGN KEY, NOT NULL   | Foreign key of status Table                                         | 2
| Lessons       | <u>**lesson_id**</u>      | INTEGER AUTO_INCREMENT | 11  | PRIMARY KEY, UNIQUE, NOT NULL        | This a unique lesson id                                             | 2
|             | lesson_title              | VARCHAR | 100  |     UNIQUE, NOT NULL                                |Title of a lesson                                                   | Introduction à Docker
|             | text                      | TEXT  |        |      NULLABLE                               |The resume of the lesson                                            | This lesson will define docker then explain how container are build...
|             | video                     | TEXT   |       |      NULLABLE                               |The link to a video on the server                                   | https://www.mon-site/video-example.mp4
|             | images                    | JSONB |        |      NULLABLE                               |JSON Array of url and title of images                               | { "logo" : {"name": "Logo Docker", "url" : "https://www.mon-site/logo-docker.png"}, "dockerFile" : {"name": "DockerFile", "url" : "https://www.mon-site/example-dockerfile.png"} }
|             | status_id                 | INTEGER | 11  | FOREIGN KEY, NOT NULL   | Foreign key of status in lesson table                               | 1
|             | module_id                 | INTEGER | 11  | FOREIGN KEY, NOT NULL   | Foreign key of modules in lesson table                              | 1
| Modules     | <u>**module_id**</u>      | INTEGER AUTO_INCREMENT | 11 | PRIMARY KEY, UNIQUE, NOT NULL         | This is a unique id of a module                                     | 1
|             | module_title              | VARCHAR | 100  |      UNIQUE, NOT NULL                               |Title of a module                                                   | Learn how to run a docker container
|             | status_id                 | INTEGER | 11  | FOREIGN KEY, NOT NULL   | Foreign Key of status                                               | 1
|             | user_id                   | INTEGER | 11  | FOREIGN KEY, NOT NULL   | Foreign key of user                                                 | 1
| Tags    | <u>**tag_id**</u>             | INTEGER AUTO_INCREMENT | 11  | PRIMARY KEY, UNIQUE, NOT NULL        | This is a unique tag id                                             | 1
|             | tag_title                 | VARCHAR | 100  |      UNIQUE, NOT NULL                               |Title of the tag                                                    | PHP
| Users    | <u>**user_id**</u>           | INTEGER AUTO_INCREMENT | 11   | PRIMARY KEY, UNIQUE, NOT NULL       | This is a unique user id                                            | 1
|             |    firstname               | VARCHAR | 100  |       NOT NULL                              |This is the user's first name                                       | John
|             |    surname                 | VARCHAR | 100  |       NOT NULL                           |This is the user's surname                                          | Doe
|             | email                     | VARCHAR | 200  |     UNIQUE, NOT NULL                                |This is the user's email address                                    | john.doe@example.com
|             | password                  | VARCHAR | 255  |         NOT NULL                            |This is the user's password                                         | $2$dudizadza9487za7fza7fzafza8f5f5za4f5az6f4a5z
|             | teacher_code              | INTEGER | 11      |      NOT NULL                               |This is the user's teacher code, if applicable                      | 75000
|             | is_active                 | BOOLEAN |      |         NOT NULL                            |Indicates if the user account is active                             | true
|             | role_id                   | INTEGER | 11  | FOREIGN KEY, NOT NULL  | Foreign key of table role                                           | 3
| User_Address| <u>**user_address_id**</u>| INTEGER AUTO_INCREMENT| 11  | AUTO_INCREMENT, UNIQUE, NOT NULL  | This is the user's address id                                            | 3
|             | street_name               | VARCHAR | 75   |      NULLABLE                              |This is the name of the user's street                               | Main Street
|             | street_number             | VARCHAR | 10   |      NOT NULL                               |This is the user's street number                                    | 123
|             | postal_code               | CHAR | 10      |       NOT NULL                              |This is the user's postal code                                      | 12345
|             | city                      | VARCHAR | 75   |       NOT NULL                              |This is the user's city                                             | Springfield
|             | country                   | VARCHAR | 200   |      NOT NULL                               |This is the name of the user's address country                               | England
|             | complementary_address        | TEXT     |     |        NULLABLE                             |This is additional address information                              | Apt 4B
| Roles       | <u>**role_id**</u>        | INTEGER AUTO_INCREMENT | 11   | PRIMARY KEY, UNIQUE, NOT NULL       | This is a unique role id                                            | 1
|             | role_title                | VARCHAR | 75   |        UNIQUE, NOT NULL                             |This is the title of the role                                       | Admin
|             | privilege_number          | INTEGER | 11      |        UNIQUE, NOT NULL                             |This is the privilege level of the role                             | 4
| Favorites   | <u>**favorite_id**</u>    | INTEGER AUTO_INCREMENT | 11   | PRIMARY KEY, UNIQUE, NOT NULL       | This is a unique favorite id                                        | 1
|             | modules                   | JSONB   |      |     NULLABLE                                |Array of JSON data containing ids of favorite modules               | {"module_id": [1, 2, 3]}
|             | lessons                   | JSONB   |      |     NULLABLE                                |Array of JSON data containing ids of favorite lessons               | {"lesson_id": [4, 5, 6]}
|             | formations                | JSONB   |     |      NULLABLE                               |Array of JSON data containing ids of favorite formations            | {"formation_id": [7, 8, 9]}
|             | user_id                   | INTEGER | 11 | PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL    | Foreign Key of table User                                           | 3
| refers_to   | <u>**tag_id**</u>         | INTEGER | 11 | PRIMARY KEY,FOREIGN KEY, UNIQUE, NOT NULL    | Foreign key of table tag                                            | 2
|             | <u>**lesson_id**</u>      | INTEGER | 11 | PRIMARY KEY,FOREIGN KEY, UNIQUE, NOT NULL    | Foreign key of table lesson                                         | 5
| compose     | <u>**formation_id**</u>   | INTEGER | 11 | PRIMARY KEY,FOREIGN KEY, UNIQUE, NOT NULL    | Foreign key of table formation                                      | 1
|             | <u>**module_id**</u>      | INTEGER | 11 | PRIMARY KEY, FOREIGN KEY,UNIQUE, NOT NULL    | Foreign key of table module                                         | 3
| follow      | <u>**formation_id**</u>   | INTEGER | 11 | PRIMARY KEY,FOREIGN KEY, UNIQUE, NOT NULL    | Foreign key of table formation                                      | 2
|             | <u>**user_id**</u>        | INTEGER | 11 | PRIMARY KEY,FOREIGN KEY, UNIQUE, NOT NULL    | Foreign key of table user                                           | 4
| learn       | <u>**module_id**</u>      | INTEGER | 11 | PRIMARY KEY,FOREIGN KEY, UNIQUE, NOT NULL    | Foreign key of table module                                         | 1
|             | <u>**user_id**</u>        | INTEGER | 11 | PRIMARY KEY,FOREIGN KEY, UNIQUE, NOT NULL    | Foreign key of table user                                           | 3
|             | is_validate               | BOOLEAN |       |      NOT NULL                               |Indicates if the module is validated                                | true