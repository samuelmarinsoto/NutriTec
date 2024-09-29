:- style_check(-singleton).

% Sección que clasifica palabras según su función en la oración escrita.

% Respuesta afirmativa
afirm([si|X],X).
afirm(['Si'|X],X).

% Sección que evalúa los posibles determinantes en la oración.
% En este contexto (Nutritec), chequea si el usuario habla en primera persona singular.

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

% Nombres que aparecen en la oración, pueden ser cualquier cosa o número.

nombre([_|X],X).
nombre([H|X], X) :- number(H).

% Sección que evalúa los posibles verbos en la oración.
% En este contexto (Nutritec), verifica si el usuario habla en primera persona singular.

verbo([quiero|X],X).
verbo([prefiero|X],X).
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
verbo([consumo|X],X).
verbo([soy|X],X).
verbo([sean|X],X).
verbo([me, gustaria|X],X).
verbo([me, diagnosticaron|X],X).

verbo(['Quiero'|X],X).
verbo(['Consumo'|X],X).
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
verbo(['Consumo'|X],X).
verbo(['Soy'|X],X).
verbo(['Sean'|X],X).
verbo(['Me', diagnosticaron|X],X).
verbo(['Me', gustaria|X],X).

% Estructura de la oración.
% Verifica si la oración tiene primero un sujeto y luego un predicado, 
% o si tiene un predicado con un verbo que sustituye al sujeto.

oracion(X, Y):- sintagma_nominal(X,A), sintagma_verbal(A,Y).
oracion(X, Y):- sintagma_verbal_2(X,Y).

% Verifica el sujeto de la oración

sintagma_nominal(X,Y):- determinante(X,A), nombre(A,Y).
sintagma_nominal(X,Y):- determinante(X,A), nombre(A,B), nombre(B,Y).
sintagma_nominal(X,Y):- nombre(X,Y).
sintagma_nominal(X,Y):- nombre(X,A), nombre(A,Y).
sintagma_nominal(X,Y):- nombre(X,A), nombre(A,B), nombre(B,Y).

% Verifica el predicado de la oración cuando tiene un sujeto previo.

sintagma_verbal(X,Y):- verbo(X,Y).
sintagma_verbal(X,Y):- verbo(X,A), sintagma_nominal(A,Y).

% Verifica el predicado de la oración cuando no tiene un sujeto explícito previo.

sintagma_verbal_2(X,Y):- verbo(X,A), sintagma_nominal(A,Y).

% Verificación de la oración completa

verificar_oracion(Oracion) :- oracion(Oracion, []), !.
verificar_oracion(Oracion) :-
    nl, writeln('Lo siento, no entendí lo que quiso escribir.'), false.
