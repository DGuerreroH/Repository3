/* Hechos */
padre(antonio,carlos).
padre(antonio,eva).
padre(carlos,fernando).
padre(carlos,silvia).
padre(david,emilio).
padre(emilio,jazmin).
padre(emilio,juan).

madre(maría,carlos).
madre(maría,eva).
madre(elena,fernando).
madre(elena,silvia).
madre(eva,emilio).
madre(rosi,jazmin).
madre(rosi,juan).

/* Reglas */

/* Regla que determina si A y B son hermanos */
hermanos(A,B) :-
padre(P,A),
madre(M,A),
padre(P,B),
madre(M,B),
A \== B. % A y B no son idénticos

/* Regla para determinar si A es abuelo de B */
abuelo(A,B) :-
padre(A,X),
padre(X,B).

/* Regla para determinar si A es abuela de B */
abuela(A,B) :-
madre(A,X),
madre(X,B).