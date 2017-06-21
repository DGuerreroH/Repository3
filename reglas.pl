/* Reglas */
es_par(X):- 0 is X mod 2.
es_mayor_edad(X):- X >= 18.
es_aprobado1(X):- X >= 70.
es_aprobado2(X,Y,Z):- X>=70, Y>=70, Z>=70.