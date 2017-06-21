/* Listas */
listar(COLOR):- COLOR=[blanco,negro,azul,rojo,verde,amarillo,rosa,cafe,naranja,gris].
listar_numeros(L) :- Cabeza = 1, Cola = [2,3,4,5], L=[Cabeza,Cola].
elementos(Cabeza,Cola) :- [Cabeza|Cola]  =  [juan,  pedro, maria,  yolanda]. 
lista(H1,H2,T1) :- [H1,H2|T1]  =  [2,  4, 6, 8,10,12,14,16,18,20].

obtenerFrente([H|T],H). % Se obtiene el frente de la lista y se almacena en la variable H
obtenerFrente2([H1,H2|_],H1,H2).

obtenerCola2([_,_|C],C). % Se obtiene los dos elementos del frente con variables anónimas
obtenerCola([H|T],T). % Se obtiene la cola y se lamacena en la variable T

concatena(L1,L2) :- write(L1),write(L2).

progenitor(pedro,[ana,ramon]).
progenitor(ana,[ramon,pepe,juan,amalia,miguel]).

padreDe(Padre, Hijo) :- progenitor(Padre,Hijos), buscar(Hijo,Hijos).
buscar(Hijo,[]) :- !, fail.
buscar(Hijo,[Hijo|L]) :- !, true.
buscar(Hijo,[C|L]) :- buscar(Hijo,L),write(Hijo), write(L),write('\n').

miembro( X, [ X | Cola]).
miembro( X, [ Cabeza | Cola] ) :- miembro( X, Cola), write(X),write(Cola).

longitud(L,R) :- length(L, R).