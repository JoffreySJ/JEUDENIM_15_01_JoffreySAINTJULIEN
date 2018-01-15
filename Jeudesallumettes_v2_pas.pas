PROGRAM Jeudesallumettes_v2_pas;

//But: L'utilisateur affronte l'ordinateur au jeu des allumettes, il rentre combien d'allumettes il retire à chaque fois.
//Entree: La saisie de l'utisateur (combien il retire d'allumettes à chaque fois)
//Sortie: Combien d'allumettes l'ordinateur retire à chaque fois, combien il reste d'allumettes, ainsi que le gagnant à la fin de la partie.

USES crt; 

CONST PAQUET=21;

VAR cpt,cptj,randomize,nombre: INTEGER;

BEGIN

	randomize(2)+1;
	cpt:=paquet;
	cptj:=2;

		REPEAT

			IF cptj MOD 2=0 THEN
			writeln 'Joueur 1';
			END 

				writeln'Veuillez saisir le nombre d allumettes que vous retirez.';
				readln nombre; 

					IF nombre>=1 ET nombre <=3 THEN
					cptj←cptj+1;
					cpt←cpt-nombre
				

					ELSE
					writeln 'Veuillez saisir un nombre entre 1 et 3.';


					END 


						IF cptj MOD 2=1 THEN 
						writeln 'C est au tour de l ordinateur.';

							IF randomize>=1 ET randomize <=3 THEN
								cptj←cptj+1;
								cpt←cpt-randomize;
								writeln cpt 
									
								ELSE 
									writeln 'Erreur de lordinateur, il va tenter de rentrer un nombre entre 1 et 3.';


							
							END

						cptj←cptj+1;
						 
						END


		UNTIL (cpt<=1);


				IF cptj MOD2=0  THEN


						writeln 'L Ordinateur remporte la partie.';

						ELSE
						writeln 'Vous remportez la partie.';


				END

					

END.