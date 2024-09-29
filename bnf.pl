:- style_check(-singleton).

% Sección que contiene la clasificación de palabras según su función en la oración escrita.


%Comienzo de conversacion con bot
start([hola]).
start(['Hola']).
start([iniciar]).
start([buenos, dias]).
start(['Buenos', dias]).
start([buenas, tardes]).
start(['Buenas', tardes]).
start([buenas, noches]).
start(['Buenas', noches]).
start([nutritec]).

%Finalizacion de conversacion con bot
end([gracias]).
end([muchas, gracias]).
end([adios]).
end([chao]).
end([hasta, luego]).

%Respuesta negatoria
neg([no|X],X).
neg(['No'|X],X).
neg([nada|X],X).
neg(['Nada'|X],X).

%Respuesta afirmatoria
afirm([si|X],X).
afirm(['Si'|X],X).

% Sección que evalúa los posibles determinantes que puede usar la oración, en este nutritec, chequea si el usuario está hablando en primera persona singular.

determinante([yo|X],X).
determinante(['Yo'|X],X).
determinante([la|X],X).
determinante(['La'|X],X).
determinante([las|X],X).
determinante(['Las'|X],X).
determinante([el|X],X).
determinante(['El'|X],X).
determinante([los|X],X).
determinante(['Los'|X],X).
determinante([una|X],X).
determinante(['Una'|X],X).
determinante([unas|X],X).
determinante(['Unas'|X],X).
determinante([un|X],X).
determinante(['Un'|X],X).
determinante([unos|X],X).
determinante(['Unos'|X],X).


% Cualquier nombre de cualquier cosa que esté en la oración.

nombre([_|X],X).
nombre([H|X], X) :- number(H).

% Sección que evalúa los posibles verbos que puede usar la oración, en este nutritec, chequea si el usuario está hablando en primera persona singular.

verbo([quiero|X],X).
verbo([tengo|X],X).
verbo([siento|X],X).
verbo([estoy|X],X).
verbo([necesito|X],X).
verbo([hago|X],X).
verbo([ocupo|X],X).
verbo([realizo|X],X).
verbo([deseo|X],X).
verbo([padezco|X],X).
verbo([sufro|X],X).
verbo([requiero|X],X).
verbo([pido|X],X).
verbo([me, gustaria|X],X).
verbo([me, diagnosticaron|X],X).

verbo(['Quiero'|X],X).
verbo(['Tengo'|X],X).
verbo(['Siento'|X],X).
verbo(['Estoy'|X],X).
verbo(['Necesito'|X],X).
verbo(['Hago'|X],X).
verbo(['Ocupo'|X],X).
verbo(['Realizo'|X],X).
verbo(['Deseo'|X],X).
verbo(['Padezco'|X],X).
verbo(['Sufro'|X],X).
verbo(['Requiero'|X],X).
verbo(['Pido'|X],X).
verbo(['Me', diagnosticaron|X],X).
verbo(['Me', gustaria|X],X).


% Aquí, se chequea si la oración tiene la estructura de una oración, primero un sujeto y luego un predicado. Sino, que tenga un predicado con un verbo que reemplace al sujeto.

oracion(X, Y):- sintagma_nominal(X,A), sintagma_verbal(A,Y).
oracion(X, Y):- sintagma_verbal_2(X,Y).

%Se chequea el sujeto de la oración

sintagma_nominal(X,Y):- determinante(X,A), nombre(A,Y).
sintagma_nominal(X,Y):- determinante(X,A), nombre(A,B), nombre(B,Y).
sintagma_nominal(X,Y):- nombre(X,Y).
sintagma_nominal(X,Y):- nombre(X,A), nombre(A,Y).
sintagma_nominal(X,Y):- nombre(X,A), nombre(A,B), nombre(B,Y).

%Se chequea el predicado de la oración si esta tiene un sujeto previo.

sintagma_verbal(X,Y):- verbo(X,Y).
sintagma_verbal(X,Y):- verbo(X,A), sintagma_nominal(A,Y).

%Se chequea el predicado de la oración si esta tiene un sujeto previo.
sintagma_verbal_2(X,Y):- verbo(X,A), sintagma_nominal(A,Y).

verificar_oracion(Oracion) :- oracion(Oracion, []), !.

verificar_oracion(Oracion) :-
    nl, writeln('Lo siento, no entendi lo que quiso escribir.'), false.
