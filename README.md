ProjetSymfony
=============

Auteur : Edouard Dejonghe

Projet Symfony pour la metière E-Application du Master AIGLE. Tous les caches ont été purgés, les logs supprimés.


## Composition:
>UserBundle -> Gestion des Utilisateurs

>ComponentBundle -> Gestion du blog en lui meme

>AppBundle -> Point d'entrée de l'application

Les bundles FOSUserBundle et FOSCommentBundle ont été utilisé dans ce projet, le CSS est un boostrap	

## Procédure d'installation
		
1. remplir parameters.yml
2. php app/console doctrine:database:create
3. (- utiliser le script de peuplement SQL) optionel
4. php app/console doctrine:schema:update --force
5. cree un utilisateur (fos:user:create | partie inscription)
	si script de peuplement a été utilisé : login: 'admin' password: 'admin'
