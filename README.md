ProjetSymfony
=============

Auteur : Edouard Dejonghe

Projet Symfony pour la metiere E-Application du Master AIGLE
le cache et les logs ont ete supprimés. Le cache doctrine a également été vidé
le repertoire bundles a été effacé, reconstruire avec assets:install
=============

## Composition:
UserBundle -> Gestion des Utilisateurs
ComponentBundle -> Gestion du blog en lui meme
AppBundle -> Point d'entrée de l'application

Les bundles FOSUserBundle et FOSCommentBundle ont été utilisé dans ce projet
Le CSS est un boostrap	

## Procédure d'installation
		
1. remplir parameters.yml
2. php app/console doctrine:database:create
3. (- utiliser le script de peuplement SQL) optionel
4. php app/console doctrine:schema:update --force
5. php app/console assets:install
6. cree un utilisateur (fos:user:create | partie inscription)
	si script de peuplement, user: 'admin' passwd: 'admin'
