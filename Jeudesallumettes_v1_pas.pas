PROGRAM Jeudesallumettes_v1_pas;

//But: Deux joueurs s'affrontent au jeu des allumettes, ils rentrent combien ils retirent d'allumettes (entre 1 et 3), puis le joueur qui tire la dernière allumette a perdu.
//Entree: Le nombre d'allumettes que retirent les joueurs à chaque coup.
//Sortie: Le nombre d'allumettes restantes, ainsi que le gagnant à la fin de la partie.

USES CRT; 

VAR cpt,cptj,nombre:INTEGER;

CONST paquet=21;


BEGIN
	cpt:=paquet;
	cptj:=1;

	REPEAT 
		BEGIN
		IF (cptj MOD 2=0) THEN 
		
			writeln('Joueur 2')

		ELSE 
			writeln ('Joueur 1');

				writeln ('Veuillez saisir le nombre d allumettes que vous retirez.');
				readln (nombre); 


					IF (nombre>3) OR (nombre<0) THEN
						writeln ('Veuillez saisir un nombre entre 1 et 3.')

					ELSE 
						BEGIN cpt:=cpt-nombre;
						cptj:=cptj+1;
						writeln(cpt); 
						END								
		END;
	UNTIL(cpt<=1);



						IF (cptj MOD 2=0) THEN 

						writeln ('Le joueur 1 remporte la partie.')

						ELSE 


						writeln ('Le joueur 2 remporte la partie.');


readln
END.