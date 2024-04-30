# Règles de gestion <a href="rules_management"></a>


## Status: 

- Un status a un id unique 
- Un status a un intitule unique 
- L'intitule peut être : 
    - en cours d'écriture 
    - en cours de validation 
    - archiver
    - refuser

## Formation: 

- Une formation a un id unique 
- Une formation a un intitule unique 
- Une formation est composé d'un ou plusieurs modules 
- Une formation peut être suivi par un utilisateur 
- Un utilisateur peut suivre une formation 
- Une formation a un status
- Un utilisateur ayant un role d'apprenant peut ajouter/retirer une formation de ses favoris 

## Module: 

- Un Module possède un id unique 
- Un Module posséde un intitule unique 
- Un Module est composé d'un ou plusieurs cours 
- Un Module possède un status 
- Le status d'un module peut être modifié par un formateur ou un administrateur 
- Les caractéristiques d'un module ne peut être modifié que par un administrateur 
- Un administrateur peut enlever un module d'une formation 
- Un Module peut être relié à plusieurs formation 
- Un administrateur peut enlever un module d'une formation 
- Un utilisateur ayant un role d'apprenant peut ajouter/retirer un module de ses favoris 

## Tag : 

- Un tag a un id unique 
- Un tag a un intitule unique
- Un utilisateur ayant un role d'administrateur peut créer, modifier ou supprimer un tag
- Un utilisateur ayant un role de formateur peut créer des tags et les ajouter à des cours dont il est auteur

## Cours: 

- Un cours possède un id unique 
- Un cours possède un intitule unique
- Un visiteur peut consulter les cours
- Un utilisateur peut s'inscrire à un cours 
- Un cours peut être mis en favoris 
- Un cours possède un status 
- Un cours est relié à un utilisateur avec un role de formateur 
- Un cours ne peut être modifié que par un utilisateur avec un role possèdant un niveau de privilège de formateur ou administrateur 
- Un cours peut être ajouté par un administrateur  ou un formateur 
- Un cours ne peut être retirer que par un administrateur 
- Un cours peut être suivis par plusieurs utilisateurs 
- Un cours peut avoir un ou plusieurs zones de textes
- Un cours peut avoir une ou plusieurs vidéos 
- Un cours peut avoir une ou plusieurs images
- Un cours peut avoir plusieurs tags 
- Un administrateur peut ajouter/enlever une vidéo, des images une zone de textes à un cours  
- Un formateur peut ajouter/enlever une vidéo, des images une zone de textes à un cours  dont il est l'auteur
- Un formateur ne peut pas supprimer un cours 
- Un administrateur peut ajouter/enlever un tag 
- Un utilisateur ayant un role d'apprenant peut ajouter/retirer un cours de ses favoris 
- Un formateur peut ajouter/enlever un tag à un cours dont il est l'auteur 


## Utilisateur: 

- Un utilisateur possède un id unique
- Un utilisateur a un prenom 
- Un utilisateur a un nom
- Un compte utilisateur possède un code formateur
- Un utilisateur possède une adresse postale décomposé comme suit: 
    - un nom de rue 
    - un numero de rue 
    - un code postal 
    - une ville
    - un complement d'adresse 
- Un utilisateur possède un email unique et un mot de passe
- Un utilisateur possède un role
- Un utilisateur possède un attribut qui indique si le compte est actif ou non 
- Un utilisateur ayant un role d'apprenant peut supprimer son compte
- Un visiteur peut créer un compte utilisateur ayant un role d'apprenant 
- Un visiteur peut demander la création d'un compte utilisateur ayant un role de formateur 
- Un utilisateur ayant un role d'administrateur peut créer un utilisateur ayant un role de formateur
- Un compte utilisateur ayant un role de formateur ne peut être modifié que par le titulaire du compte ou par un administrateur
- Un compte utilisateur ayant un role de formateur ne peut être créer que pour une personne identifié par une adresse mail 
- Un utilisateur ayant un role de formateur peut être desactiver uniquement par un administrateur 
- Un compte utilisateur ayant un role d'apprenant ne peut être modifié que par le titulaire de ce compte ou par un administrateur 
- Un compte utilisateur ayant un role d'administrateur ne peut être créer/modifié ou supprimer que par un autre compte administrateur 

## Role: 

- Un role possède un id unique 
- Un role possède un intitule unique 
- Un role possède un niveau de privilège 
- Un niveau de privilège peut aller de 1 à 4 et correspond à: 
    - 1 : Visiteur 
    - 2 : Apprenant 
    - 3 : Formateur 
    - 4 : Administrateur 



