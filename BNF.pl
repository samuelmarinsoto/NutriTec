:- style_check(-singleton).

% Sección que contiene la clasificación de palabras según su función en la oración escrita.

% Sección que evalúa los posibles determinantes que puede usar la oración, en este nutritec, chequea si el usuario está hablando en primera persona singular.

determinante([yo|X],X).
determinante(['Yo'|X],X).
determinante([lo|X],X).
determinante(['Lo'|X],X).
determinante([yo,lo|X],X).
determinante(['Yo',lo|X],X).

% Cualquier nombre de cualquier cosa que esté en la oración.

sustantivo_g([_|X],X).

% Sección que evalúa los posibles verbos que puede usar la oración, en este nutritec, chequea si el usuario está hablando en primera persona singular.

verbo([quiero|X],X).
verbo([tengo|X],X).
verbo([siento|X],X).
verbo([estoy|X],X).
verbo([necesito|X],X).
verbo([ocupo|X],X).
verbo([me,gustaria|X],X).

verbo(['Quiero'|X],X).
verbo(['Tengo'|X],X).
verbo(['Siento'|X],X).
verbo(['Estoy'|X],X).
verbo(['Necesito'|X],X).
verbo([ocupo|X],X).
verbo([me,gustaria|X],X).



% Aquí, se chequea si la oración tiene la estructura de una oración, primero un sujeto y luego un predicado. Sino, que tenga un predicado con un verbo que reemplace al sujeto.

oracion(X, Y):- sintagma_nominal(X,A), sintagma_verbal(A,Y).
oracion(X, Y):- sintagma_verbal(X,Y).

%Se chequea el sujeto de la oración

sintagma_nominal(X,Y):- determinante(X,A), nombre(A,Y).
sintagma_nominal(X,Y):- determinante(X,A).

%Se chequea el predicado de la oración.

sintagma_verbal(X,Y):- verbo(X,Y).
sintagma_verbal(X,Y):- verbo(X,A), sintagma_nominal(A,Y).


verificar_oracion(Oracion) :- oracion(Oracion, []), !.

verificar_oracion(Oracion) :-
    nl, writeln('Lo siento, no entendí lo que quisiste escribir.'), !,
    input_a_lista(NuevaOracion),
    verificar_oracion(NuevaOracion).
