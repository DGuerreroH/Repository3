
persona(maria, mujer).
persona(juan, hombre).
persona(pedro, hombre).
juega(juan, futbol).
juega(maria, basquetbol).
juega(pedro, futbol).
gusta(juan, leer).
gusta(maria, chocolate).
gusta(maria, leer).
gusta(pedro, chocolate).


ciudades(tokio, japon, asia, japones).
ciudades(londres, inglaterra, europa, ingles).
ciudades(paris, francia, europa, frances).
ciudades(shangai, china, asia, mandarin).
ciudades(mexico, mexico, america, espanol).
ciudades(santiago, chile, america, espanol).
ciudades(bogota, colombia, america, espanol).
ciudades(johanesburgo, sudafrica, africa, ingles).
ciudades(madrid, espana, africa, ingles).


raiz(A,B) :- /*raiz del producto de 2 numeros*/
X is sqrt(A*B),
write(X).

promedio(A,B,C) :- /*promedio de 3 numeros*/
X is ((A+B+C)/3),
write(X).


animal(tigre, carnivoro).
animal(leon, carnivoro).
animal(gato, carnivoro).
animal(oso, carnivoro).
animal(conejo, hervivoro).
animal(oso, hervivoro).
vive(oso, 30).
vive(leonel, 25).
vive(gato, 10).
vive(conejo, 5).

omnivoro(X) :- /*animales omnivoros*/
animal(X, carnivoro),
animal(X, hervivoro).

vive_5(X) :- /* Mas de 5 años*/
vive(X,Y),
Y > 5.

vive_10(X) :- /*onmnivoros que viven mas de 10 años*/
vive(X,Y),
Y > 10,
animal(X, carnivoro),
animal(X, hervivoro).

