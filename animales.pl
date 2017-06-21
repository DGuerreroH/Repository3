animal(leon).
animal(perro).
animal(iguana).
animal(gallina).
animal(gato).
animal(pato).
animal(hipopotamo).
animal(leon,carnivoro).
animal(gato,carnivoro).
animal(oso,carnivoro).
animal(conejo,herviboro).
animal(oso,herviboro).
vive(oso,30).
vive(leonel,25).
vive(gato,10).
vive(conejo,5).
omnivoro(X):- animal(X,carnivoro), animal(X,herviboro).
mayorDiezOmnivoro(X) :- omnivoro(X), vive(X,Y), Y>=10.