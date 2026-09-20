# Apprentissages

## Exercice 1 — random_pet & dépendances

### Court résumé de l’objectif visé
L'objectif est de créer notre premier fichier .tf pour créer un provider. Ce provider va générer une ressource de type random_pet.
une fois cette ressource créee, on recupère le contenu dans une autre ressource et on l' intègre dans le contenu d'un fichier texte fraichement créer par Terraform.

### Problème rencontré et pourquoi il est survenu
Je comprennais pas le concept parce que je connaissais pas.

### Solution appliquée et pourquoi cette solution fonctionne
La solution appliquée fut d'apprendre le concept.

### Ce que j'ai appris
L'usage de Terraform.

## Exercice 2 — Tests & conditions

### Court résumé de l’objectif visé
L'objectif étant de sécuriser la configuration avec des préconditions et postconditions.

### Problème rencontré et pourquoi il est survenu
J'apprends le concept, donc je cherche des solutions et je cherchais à comprendre pourquoi ca ne marchait pas.

### Solution appliquée et pourquoi cette solution fonctionne
Demandez de l'aide au professeur après avoir fait des recherches en amont sur la documentation.

### Ce que j'ai appris
Faire des tests avec un fichier .hcl permet d'automatisé des tests pour voir si le script terraform réalise bien des résultats voulus.

## Exercice 3 — Modules

### Court résumé de l’objectif visé
Factoriser la génération de fichiers via Terraform

### Problème rencontré et pourquoi il est survenu
Je ne comprenais pas comment je disais à mon module racine de récupérer les modules du dossier modules/pet_fleet

### Solution appliquée et pourquoi cette solution fonctionne
Je me suis renseigné sur le systeme de source dans les modules pour lui donner le chemin de mes nouveaux modules.

### Ce que j'ai appris
J'ai appris à connecter des modules enfants avec le module racine.