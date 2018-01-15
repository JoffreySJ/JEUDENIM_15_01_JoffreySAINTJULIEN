ALGORITHME Jeudesallumettes_v1_algo

//But: Deux joueurs s'affrontent au jeu des allumettes, ils rentrent combien ils retirent d'allumettes (entre 1 et 3), puis le joueur qui tire la dernière allumette a perdu.
//Entree: Le nombre d'allumettes que retirent les joueurs à chaque coup.
//Sortie: Le nombre d'allumettes restantes, ainsi que le gagnant à la fin de la partie.

VAR cpt,cptj,nombre: ENTIER 

CONST paquet=21

DEBUT
		cpt:=paquet
		cptj=1

	REPETER
	
		Si mod2 cptj=0 ALORS
		ECRIRE "Joueur 2"

		SINON 
		ECRIRE "Joueur 1"

		FINSI

			ECRIRE "Veuillez saisir le nombre d'allumettes que vous retirez."
			LIRE nombre 
			

			Si nombre>3 ou nombre <1 ALORS 
				ECRIRE " Veuillez saisir un nombre entre 1 et 3."


				SINON
					cpt ← cpt-nombre 
					cptj←cptj+1 
				FINSI


			SI cpt=1 ALORS
				ECRIRE "Le joueur 1 remporte la partie."

			SINON
				ECRIRE "Le joueur 2 remporte la partie."
			FINSI
					

	JUSQUA cpt=1

FIN