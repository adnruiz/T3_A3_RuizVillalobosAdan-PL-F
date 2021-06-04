
mujer(liliana).
mujer(katherine).
mujer(daniela).
mujer(dalila).
mujer(daisy).
mujer(baetriz).
mujer(graciela).
mujer(mariana).
mujer(fatima).
mujer(andrea).

hombre(abel). adulto(abel).
hombre(adan).
hombre(kevin).
hombre(thiago). ninio(thiago).
hombre(nestor).
hombre(andres).
hombre(alex).
hombre(benjamin).
hombre(ivan).
hombre(luis).

madre(liliana, jose).
madre(liliana, daniela).
madre(liliana, luis).
madre(martha, daisy).
madre(olivia, sergio).

padre(abel, dalila).
padre(abel, alex).
padre(ivan, kevin).
padre(nestor, andres).
padre(abel, thiago).

%listado de PADRES y MADRES de familia con sus hijos
padres_familia(X, Y) :- padre(X, Y) ; madre(X, Y).

%listado de PADRES y MADRES de familia
padres(X) :- padre(X, _) ; madre(X, _).

%PAPAS
papa(X) :- padre(X, _). 
%MAMAS
mama(X) :- madre(X, _).

%HIJOS
hijo(Y) :- (padre(_, Y) ; madre(_, Y)) , hombre(Y). 

%HIJAS
hija(Y) :- (padre(_, Y) ; madre(_, Y)) , mujer(Y).


%ABUELOS
abuelos(Z, Y) :- padre(Z, X) , (padre(X, Y) ; madre(X, Y)), hombre(Z). 

%ABUELAS
abuelas(Z, Y) :- madre(Z, X) , (padre(X, Y) ; madre(X, Y)), mujer(Z).

%ESPOSOS
esposo(Z, Y) :- padre(Z, X) , madre(Y, X).

%NIETOS
nieto(Z, Y) :- (padre(X, Z) ; madre(X, Z)) , (padre(Y, X) ; madre(Y, X)) , hombre(Z).

%NIETAS
nieta(Z, Y) :- (padre(X, Z) ; madre(X, Z)) , (padre(Y, X) ; madre(Y, X)) , mujer(Z).

%HERMANOS
hermano(X, Y) :- (padre(Z, X) ; madre(Z, X)) , (padre(Z, Y) ; madre(Z, Y)) , hombre(X), not(X=Y).

%HERMANAS
hermana(X, Y) :- (padre(Z, X) ; madre(Z, X)) , (padre(Z, Y) ; madre(Z, Y)) , mujer(X), not(X=Y).

%PERSONA
persona(X) :- hombre(X) ; mujer(X).


% C O N S U L T A S
%abuelos(Z,Y).
%abuelas(Z,Y).
%persona(X).
%nieto(Z,Y).
%nieta(Z,Y).
%hermano(X,Y).
%hermana(X,Y).
%esposo(Z,Y).