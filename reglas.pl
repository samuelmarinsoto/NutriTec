:-style_check(-singleton).
% Importing the knowledge base
:- consult('db.pl').
:- consult('bnf.pl').

% Consultar un plan diario basado en preferencias del usuario
% Input: Minimo de calorias a consumir, maximo de calorias a consumir, nivel de actividad de usuario, padecimiento de usuario, 
% tipo de dieta del usuario
% Output: True, tira a consola una lista de platillos para cada hora del dia y el total de calorias diarias que contiene el plan
% False, no encontro una combinacion de comidas que satisfaga las condiciones
plan_diario(MinCalorias, MaxCalorias, NivelActividad, Padecimiento, TipoDieta) :-
	seleccionar_comida(desayuno, NivelActividad, Padecimiento, TipoDieta, CaloriasDesayuno, DescripcionDesayuno),
	seleccionar_comida(merienda, NivelActividad, Padecimiento, TipoDieta, CaloriasMerienda, DescripcionMerienda),
	seleccionar_comida(almuerzo, NivelActividad, Padecimiento, TipoDieta, CaloriasAlmuerzo, DescripcionAlmuerzo),
	seleccionar_comida(merienda, NivelActividad, Padecimiento, TipoDieta, CaloriasCafecito, DescripcionCafecito),
	seleccionar_comida(cena, NivelActividad, Padecimiento, TipoDieta, CaloriasCena, DescripcionCena),

	CaloriasTotales is CaloriasDesayuno + CaloriasMerienda + CaloriasAlmuerzo + CaloriasCafecito + CaloriasCena,

	CaloriasTotales >= MinCalorias,
	CaloriasTotales =< MaxCalorias,

	nl, writeln('Muchas gracias. A continuacion, la dieta recomendada...'), nl,
	format('Calorias Diarias: ~w~n', [CaloriasTotales]),
	format('Desayuno: ~w~n', [DescripcionDesayuno]),
	format('Merienda: ~w~n', [DescripcionMerienda]),
	format('Almuerzo: ~w~n', [DescripcionAlmuerzo]),
	format('Cafecito: ~w~n', [DescripcionCafecito]),
	format('Cena: ~w~n', [DescripcionCena]).

% Consultar por una comida
% Input: Tiempo (osea desayuno, almuerzo, cena, etc.), nivel de actividad del usuario, padecimientos del usuario, tipo de dieta del usuario
% Output: True, Calorias (del platillo), Descripcion (del platillo)
% False, no encontro una comida que satisfaga las condiciones
% Debug: descomentar format/2 para ver cual comida esta evaluando, y cuales condiciones cumplió la comida
seleccionar_comida(Tiempo, NivelActividad, Padecimiento, TipoDieta, Calorias, Descripcion) :-
	comida(Nombre, Calorias, Tiempo, NivelesActividad, TiposDieta, Padecimientos, Descripcion),
	%format('~w, ~w, ~w, ~w~n', [Nombre, NivelesActividad, Padecimientos, TiposDieta]),
	member(NivelActividad, NivelesActividad),
	%format('pass nivel actividad~n'),
	member(Padecimiento, Padecimientos),
	%format('pass padecimiento~n'),
	member(TipoDieta, TiposDieta),
	%format('pass tipodieta~n'),
	!. 

% Convierte entrada del usuario a lista de palabras
input_list(L) :-
    read_line_to_codes(user_input, Cs),
    atom_codes(A, Cs),
    atomic_list_concat(L, ' ', A).

% Regla para convertir la entrada en un string
input_string(A) :-
    read_line_to_codes(user_input, Cs),
    atom_codes(A, Cs).

% Miembro
miembro(X, [X|_]).
miembro(X, [_|T]) :- miembro(X, T).

% Regla que elimina los signos de puntuacion de una oracion.
eliminar_puntuacion(X, Y) :- 
    atom_chars(X, Chars),
    (   last(Chars, '.') 
    ->  elim(Chars, InitChars),  % Elimina el punto al final de la oracion
        atom_chars(Y, InitChars)  % Crear un nuevo átomo sin el punto
    ;   Y = X).  % Si no hay un punto, simplemente se devuelve el atomo que ya se tenia antes.

% Hechos para obtener todos los caracteres excepto el último
elim([], []).  
elim([_], []).  
elim([H|T], [H|I]) :- elim(T, I).  

% Utiliza el predicado para tener toda la oracion menos el punto.
prefijo(I, [L|T]) :- 
    append(I, [L], T).


% Funciones para validar la entrada del usuario en distintas categorias.

% Regla para validar el padecimiento

comparePadecimientos(X, Padecimiento) :-  
    eliminar_puntuacion(X, Y),
    atomic_list_concat(A, ' ', Y), 
    listaTipoDePadecimientos(L),
    findall(P, (member(P, L), member(P, A)), Coincidencias),
    (   Coincidencias \= []
    ->  [Padecimiento | _] = Coincidencias,  
        !  
    ;   nl, writeln('No reconozco ese padecimiento, intentelo de nuevo.'), nl,
        preguntar_padecimiento(Padecimiento)  
    ).

% Regla para validar las calorias
compareMaxcalorias(X, Calorias) :-  
    eliminar_puntuacion(X, Y),  
    atomic_list_concat(A, ' ', Y),  
    (   buscar_numero(A, Calorias),  
        number(Calorias),  
        Calorias >= 1260, 
        Calorias =< 1970 
    ->  !  % Si las calorías son válidas, continúa
    ;   % Si no es válido, vuelve a preguntar
        nl, writeln('Por favor, ingrese una cantidad válida de calorías.'), nl,
        preguntar_maxcalorias(Calorias)  
    ).

% Regla para validar las calorias
compareMincalorias(X, Calorias) :-  
    eliminar_puntuacion(X, Y),  
    atomic_list_concat(A, ' ', Y),  
    (   buscar_numero(A, Calorias),  
        number(Calorias),  
        Calorias >= 1260, 
        Calorias =< 1970 
    ->  !  % Si las calorías son válidas, continúa
    ;   % Si no es válido, vuelve a preguntar
        nl, writeln('Por favor, ingrese una cantidad válida de calorías.'), nl,
        preguntar_mincalorias(Calorias)  
    ).

% Regla que se encarga de encontrar un numero en la oracion.

buscar_numero([], _) :- fail. 
buscar_numero([H|_], Num) :- 
    atom_number(H, Num),  
    number(Num), !. 
buscar_numero([_|T], Num) :- buscar_numero(T, Num).

% Regla para validar la frecuencia de actividad fisica
compareFrecuencia(X, Frecuencia) :-  
    eliminar_puntuacion(X, Y),
    atomic_list_concat(A, ' ', Y), 
    listaFrecuencia(L),
    findall(P, (member(P, L), member(P, A)), Coincidencias),
    (   Coincidencias \= []
    ->  [Frecuencia | _] = Coincidencias,  
        !  
    ;   nl, writeln('No reconozco ese nivel de frecuencia de actividad fisica, intentelo de nuevo.'), nl,
        preguntar_frecuencia(Frecuencia)  
    ).

% Regla para validar el tipo de dieta
compareTipoDieta(X, TipoDieta) :-  
    eliminar_puntuacion(X, Y),
    atomic_list_concat(A, ' ', Y), 
    listaTipoDieta(L),
    findall(P, (member(P, L), member(P, A)), Coincidencias),
    (   Coincidencias \= []
    ->  [TipoDieta | _] = Coincidencias,  
        !  
    ;   nl, writeln('No reconozco ese tipo de dieta, intentelo de nuevo.'), nl,
        preguntar_tipo_dieta(TipoDieta)  
    ).

% Regla para validar saludos
compareSaludo(X, Saludo) :-
    eliminar_puntuacion(X, Y),
    atomic_list_concat(A, ' ', Y), 
    listaSaludos(L),
    findall(P, (member(P, L), member(P, A)), Coincidencias),
    (   Coincidencias \= []
    ->  [Saludo | _] = Coincidencias,  
        !  
    ;   nl, writeln('Digame hola porque no breteo si no me saludan'), nl,
        detectar_saludo() 
    ).

% Regla para validar despedida
compareDespedida(X, Despedida) :-
    eliminar_puntuacion(X, Y),
    atomic_list_concat(A, ' ', Y),
    listaDespedidas(L),
    findall(P, (member(P, L), member(P, A)), Coincidencias),
    Coincidencias \= [],
    [Despedida | _] = Coincidencias.
%    (   Coincidencias \= []
%    ->  [Despedida | _] = Coincidencias,  
%        !  
%    ;   nl, writeln('No reconozco ese tipo de dieta, intentelo de nuevo.'), nl,
%        preguntar_tipo_dieta(TipoDieta)  
%    ).


% Listas para validar las entradas
listaSaludos(L) :- findall(X, saludos(X), L).
listaDespedidas(L) :- findall(X, despedidas(X), L).
listaTipoDePadecimientos(L) :- findall(X, padecimiento(X), L).
listaFrecuencia(L) :- findall(X, nivel_actividad(X, _), L).
listaTipoDieta(L) :- findall(X, tipo_dieta(X), L).


% Preguntas especificas al usuario

% Pregunta sobre padecimientos
preguntar_padecimiento(Padecimiento) :-
    nl, writeln('Tiene algun padecimiento? (Ejemplo: hipertension)'),
    input_string(Respuesta),
    comparePadecimientos(Respuesta, Padecimiento).

% Pregunta sobre calorias maximas
preguntar_maxcalorias(Maxcalorias) :-
    nl, writeln('Cuantas calorias maximas diarias puede consumir? (Minimo: 1260, Maximo: 1970)'),
    input_string(Respuesta),
    compareMaxcalorias(Respuesta, Maxcalorias).

% Pregunta sobre calorias minimas
preguntar_mincalorias(Mincalorias) :-
    nl, writeln('Cuantas calorias minimas diarias puede consumir? (Minimo: 1260, Maximo: 1970)'),
    input_string(Respuesta),
    compareMincalorias(Respuesta, Mincalorias).

% Pregunta sobre la frecuencia de actividad fisica
preguntar_frecuencia(Frecuencia) :-
    nl, writeln('Con que nivel de frecuencia realizas actividad fisica?'),
    nl, writeln('inicial: 0-2 veces por semana'),
    nl, writeln('intermedio: 3-4 veces por semana'),
    nl, writeln('avanzado: 5 o mas veces por semana'),
    input_string(Respuesta),
    compareFrecuencia(Respuesta, Frecuencia).

% Pregunta sobre el tipo de dieta
preguntar_tipo_dieta(TipoDieta) :-
    nl, writeln('Que tipo de dieta prefieres? (Ejemplo: vegetariana)'),
    input_string(Respuesta),
    compareTipoDieta(Respuesta, TipoDieta).
    
detectar_despedida :-
	input_string(Respuesta),
	(compareDespedida(Respuesta, Despedida) % true si usuario quiere salir, false si no
	-> nl, writeln('Entendido, hasta luego!')
	; nl, writeln('Vamos a empezar de cero'), inicio()
	).

detectar_saludo :-
	input_string(Respuesta),
	(compareSaludo(Respuesta, Saludo) % true si usuario esta saludando inicia funcion, false cicla esperando una respuesta
	-> nl, writeln('Bienvenido a NutriTEC! En que le podemos ayudar hoy?'),
	input_string(MeValeGorra),
	nl, writeln('Claro, con gusto le ayudaremos con eso. Le recomendaremos una dieta que se ajuste a sus necesidades. Para seguir, cuentenos un poco de usted.'),
	ingresar_datos(_, _, _, _, _, _, _)
	; nl, writeln('Disculpe, no le logre entender. Puede replantear su peticion?'), detectar_saludo()
	).


% Regla de ingreso de datos y ejecucion del flujo
% Hace preguntas al usuario para extraer informacion de el o ella, y hace una consulta con la regla plan_diario/5
% para obtener un plan diario adecuado.
% Input: 7 variables vacias
% Output: plan diario de dieta
% Debug: descomentar format/2 para ver respuestas obtenidas del usuario que pasaran a la regla plan_diario/5

ingresar_datos(NombreDieta, Padecimientos, Maxcalorias, Mincalorias, Frecuencia, TipoDieta, MenuDieta) :-
    
    % Preguntar sobre el padecimiento
    preguntar_padecimiento(Padecimientos),

    % Preguntar sobre calorias maximas
    preguntar_maxcalorias(Maxcalorias),

    % Preguntar sobre calorias minimas
    preguntar_mincalorias(Mincalorias),

    % Preguntar sobre la frecuencia de actividad fisica
    preguntar_frecuencia(Frecuencia),

    % Preguntar sobre el tipo de dieta
    preguntar_tipo_dieta(TipoDieta),

	% format('~w, ~w, ~w, ~w, ~w~n', [Mincalorias, Maxcalorias, Frecuencia, Padecimientos, TipoDieta]),
    % Buscar dieta en base de datos
	(plan_diario(Mincalorias, Maxcalorias, Frecuencia, Padecimientos, TipoDieta)
	-> nl, writeln('Gracias por usar NutriTec! Necesita mas ayuda?')
	; nl, writeln('Lo lamentamos, pero no se pudo encontrar una dieta adecuada en la base de datos. Desea intentar de nuevo?'))
	,
	detectar_despedida().

% Regla principal de inicio del programa
inicio :-
	detectar_saludo().
	
	
