from pyswip import Prolog

prolog = Prolog()
prolog.consult("hechos.pl")

X = input("¿Qué le gusta a ...? ")

for valor in prolog.query("le_gusta(" + X + ", Y)"): 
    print(X, "le gusta ", valor["Y"])

prolog.consult("animales.pl")
X = input("¿Es una animal ...?")
result = bool(list(prolog.query("animal(" + X + ")")))
print(result)

prolog.consult("reglas.pl")
X = input("Ingresar un numero")
result = bool(list(prolog.query("es_par(" + X +")")))
print(result)