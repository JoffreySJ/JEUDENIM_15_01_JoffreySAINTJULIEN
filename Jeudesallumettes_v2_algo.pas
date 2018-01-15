ALGORITHME Jeudesallumettes_v2_algo

//But: L'utilisateur affronte l'ordinateur au jeu des allumettes, il rentre combien d'allumettes il retire à chaque fois.
//Entree: La saisie de l'utisateur (combien il retire d'allumettes à chaque fois)
//Sortie: Combien d'allumettes l'ordinateur retire à chaque fois, combien il reste d'allumettes, ainsi que le gagnant à la fin de la partie.

CONST: PAQUET←21

VAR:cpt,cptj,nombre,aleatoire :ENTIER

DEBUT

	aleatoire(3)
	nombre←paquet
	cptj←2

		REPETER

			SI cptj MOD 2=0 ALORS
			ECRIRE "Joueur 1"
			FINSI
				ECRIRE "Veuillez saisir le nombre d'allumettes que vous retirez." 
				LIRE nombre 

				SI nombre>=1 ET nombre <=3 ALORS
					cptj←cptj+1
					cpt←cpt-nombre 
				

				SINON 
					ECRIRE "Veuillez saisir un nombre entre 1 et 3."

					

				FINSI


			SI cptj MOD 2=1 ALORS 
			ECRIRE "C'est au tour de l'ordinateur."

				SI aleatoire>=1 ET aleatoire <=3 ALORS
					cptj←cptj+1
					cpt←cpt-aleatoire
					ECRIRE cpt 
						
					SINON 
						ECRIRE "Erreur de l'ordinateur, il va tenter de rentrer un nombre entre 1 et 3."


				FINSI 

			FINSI

		JUSQUA cpt<=1
					
						SI cptj MOD2=0  ALORS


						ECRIRE "L'Ordinateur remporte la partie."

						SINON 
						ECRIRE "Vous remportez la partie."


						FINSI

					

FIN