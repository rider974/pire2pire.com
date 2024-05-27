| Name                      | Type          | Description                                                         | Example
| ------------------------  | ------------- | ------------------------------------------------------------------- | -------------------
| <u>**id_status**</u>      | SERIAL        | This is a unique status id                                          | 4
| status_title              | VARCHAR(50)   | This is a unique title for a status                                 | Archive
| <u>**id_formation**</u>   | SERIAL        | This is a unique formation id                                       | 2
| formation_title           | VARCHAR(100)  | This is a unique title for a formation                              | Formation Docker
| id_status                 | INTEGER(11)   | Foreign key of status Table                                         | 2
| <u>**id_lesson**</u>      | SERIAL        | This a unique lesson id                                             | 2
| lesson_title              | VARCHAR(100)  | Title of a lesson                                                   | Introduction à Docker
| text                      | TEXT          | The resume of the lesson                                            | This lesson will define docker then explain how container are build...
| video                     | TEXT          | The link to a video on the server                                   | https://www.mon-site/video-example.mp4
| images                    | JSONB         | JSON Array of url and title of images                               | { "logo" : {"name": "Logo Docker", "url" : "https://www.mon-site/logo-docker.png"}, "dockerFile" : {"name": "DockerFile", "url" : "https://www.mon-site/example-dockerfile.png"} }
| id_status                 | INTEGER(11)   | Foreign key of status in lesson table                               | 1
| id_module                 | INTEGER(11)   | Foreign key of modules in lesson table                              | 1
| <u>**id_module**</u>      | SERIAL        | This is a unique id of a module                                     | 1
| module_title              | VARCHAR(100)  | Title of a module                                                   | Learn how to run a docker container
| id_status                 | INTEGER(11)   | Foreign Key of status                                               | 1
| id_user                   | INTEGER(11)   | Foreign key of user                                                 | 1
| <u>**id_tag**</u>         | SERIAL        | This is a unique tag id                                             | 1
| tag_title                 | VARCHAR(100)  | Title of the tag                                                    | PHP
| <u>**id_user**</u>        | SERIAL        | This is a unique user id                                            | 1
| firstname                 | VARCHAR(100)  | This is the user's first name                                       | John
| surname                   | VARCHAR(100)  | This is the user's surname                                          | Doe
| street_name               | VARCHAR(75)   | This is the name of the user's street                               | Main Street
| street_number             | VARCHAR(10)   | This is the user's street number                                    | 123
| zip_code                  | CHAR(10)      | This is the user's postal code                                      | 12345
| city                      | VARCHAR(75)   | This is the user's city                                             | Springfield
| additionnal_adress        | TEXT          | This is additional address information                              | Apt 4B
| email                     | VARCHAR(200)  | This is the user's email address                                    | john.doe@example.com
| password                  | VARCHAR(255)  | This is the user's password                                         | $2$dudizadza9487za7fza7fzafza8f5f5za4f5az6f4a5z
| teacher_code              | SMALLINT      | This is the user's teacher code, if applicable                      | 75000
| is_active                 | BOOLEAN       | Indicates if the user account is active                             | true
| id_role                   | INTEGER(11)   | Foreign key of table role                                           | 3
| <u>**id_role**</u>        | SERIAL        | This is a unique role id                                            | 1
| role_title                | VARCHAR(75)   | This is the title of the role                                       | Admin
| privilege_number          | SMALLINT      | This is the privilege level of the role                             | 4
| <u>**id_favorite**</u>    | SERIAL        | This is a unique favorite id                                        | 1
| modules                   | JSONB         | Array of JSON data containing ids of favorite modules               | {"module_id": [1, 2, 3]}
| lessons                   | JSONB         | Array of JSON data containing ids of favorite lessons               | {"lesson_id": [4, 5, 6]}
| formations                | JSONB         | Array of JSON data containing ids of favorite formations            | {"formation_id": [7, 8, 9]}
| id_user                   | INTEGER(11)   | Foreign Key of table User                                           | 3
| <u>**id_tag**</u>         | INTEGER(11)   | Foreign key of table tag                                            | 2
| <u>**id_lesson**</u>      | INTEGER(11)   | Foreign key of table lesson                                         | 5
| <u>**id_formation**</u>   | INTEGER(11)   | Foreign key of table formation                                      | 1
| <u>**id_module**</u>      | INTEGER(11)   | Foreign key of table module                                         | 3
| <u>**id_formation**</u>   | INTEGER(11)   | Foreign key of table formation                                      | 2
| <u>**id_user**</u>        | INTEGER(11)   | Foreign key of table user                                           | 4
| <u>**id_module**</u>      | INTEGER(11)   | Foreign key of table module                                         | 1
| <u>**id_user**</u>        | INTEGER(11)   | Foreign key of table user                                           | 3
| ok                        | BOOLEAN       | Indicates if the module is validated                                | true