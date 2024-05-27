# Règles de gestion <a id="rules_management"></a>


## Status: 

- Un status a un intitule unique 
- L'intitule peut être : 
    - en cours d'écriture 
    - en cours de validation 
    - archiver
    - refuser

## Formation: 

- Une formation a un intitule unique 
- Une formation est composé d'un ou plusieurs modules 
- Une formation a un status
- Un compte ayant un niveau de privilège au minimum d'apprenant peut ajouter/retirer une formation de ses favoris

## Module: 

- Un Module posséde un intitule unique 
- Un Module est composé de zero à plusieurs cours 
- Un Module possède un status 
- Le status d'un module peut être modifié par un formateur ou un administrateur 
- Les caractéristiques d'un module ne peut être modifié que par un administrateur 
- Un utilisateur ayant un role d'apprenant peut ajouter/retirer un module de ses favoris 
- Un administrateur peut enlever un module d'une formation 
- Un Module peut être relié à zéro ou plusieurs formation 

## Tag : 

- Un tag a un intitule unique
- Un utilisateur ayant un role d'administrateur peut créer, modifier ou supprimer un tag
- Un utilisateur ayant un role de formateur peut créer des tags et les ajouter à des cours dont il est auteur

## Cours: 

- Un cours possède un intitule unique
- Un visiteur peut consulter les cours
- Un utilisateur peut s'inscrire à un cours 
- Un apprenant peut ajouter/retirer un cours de ses favoris
- Un cours possède un status 
- Un cours est relié à un formateur 
- Un cours ne peut être modifié que par un formateur ou administrateur 
- Un cours peut être ajouté par un administrateur 
- Un formateur peut ajouter un cours dont il est auteur à la plateforme 
- Un cours ne peut être retirer de la plateforme que par un administrateur 
- Un cours peut être ajouté à un module par un administrateur ou un formateur
- Un cours peut être relié à aucun ou 1 module
- Un cours peut être suivis par zéro ou plusieurs utilisateurs 
- Un cours doit avoir une zone de texte
- Un cours doit avoir une vidéo 
- Un cours peut avoir une ou plusieurs images
- Un cours peut avoir zéro ou plusieurs tags 
- Un administrateur peut ajouter/enlever une vidéo, des images une zone de texte à un cours  
- Un formateur peut ajouter/enlever une vidéo, des images une zone de texte à un cours  dont il est l'auteur
- Un formateur ne peut pas supprimer un cours 
- Un administrateur peut ajouter/enlever un tag 
- Un utilisateur ayant un role d'apprenant peut ajouter/retirer un cours de ses favoris 
- Un formateur peut ajouter/enlever un tag à un cours dont il est l'auteur 
- Un formateur peut ajouter un cours dont il est l'auteur à un module 
- Un administrateur peut enlever un cours d'un module 
- Un cours suivis par un zéro ou plusieurs apprenant 
- Un cours suivis par un apprenant possède un etat de validation
- Un cours suivis par un apprenant est rattaché à un seul cours ET un seul apprenant
- Un apprenant peut suivre zéro ou un cours 
- Un apprenant peut se désincrire d'un cours 

## Utilisateur: 

- Un utilisateur a un prenom 
- Un utilisateur a un nom
- Un utilisateur possède une adresse postale décomposé comme suit: 
    - un nom de rue 
    - un numero de rue 
    - un code postal 
    - une ville
    - un complement d'adresse 
- Un utilisateur possède un email unique et un mot de passe
- Un utilisateur possède un role
- Un utilisateur ayant un un role de formateur possède un code formateur 
- Un utilisateur possède un attribut qui indique si le compte est actif ou non 
- Un utilisateur ayant un niveau de privilège apprenant peut supprimer son compte
- Un visiteur peut créer un compte utilisateur ayant un role d'apprenant 
- Un visiteur peut demander la création d'un compte utilisateur ayant un role de formateur 
- Un utilisateur ayant un role d'administrateur peut créer un utilisateur ayant un role de formateur
- Un compte utilisateur ayant un role de formateur ne peut être modifié que par le titulaire du compte ou par un administrateur
- Un utilisateur ayant un role de formateur peut être desactiver uniquement par un administrateur 
- Un compte utilisateur ayant un role d'apprenant ne peut être modifié que par le titulaire de ce compte ou par un administrateur 
- Un compte utilisateur ayant un role d'administrateur ne peut être créer/modifier ou supprimer que par un autre compte administrateur 
- Un utilisateur ayant un role d'apprenant peut ajouter/retirer une formation de ses favoris 

## Role: 

- Un role possède un intitule unique 
- Un role possède un niveau de privilège 
- Un niveau de privilège peut aller de 1 à 4 et correspond à: 
    - 1 : Visiteur 
    - 2 : Apprenant 
    - 3 : Formateur 
    - 4 : Administrateur 

## Favoris: 

- Un favoris est relié à un utilisateur 
- Un favoris peut être relié à un Module et/ou une formation et/ou un cours 
- Un utilisateur connecté peut ajouter/retirer un module et/ou formation et/ou un cours à ses favoris
 
 