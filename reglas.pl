:-style_check(-singleton).
% Importing the knowledge base
:- consult('db.pl').
%:- consult('bnf.pl').


% Convierte entrada del usuario a lista de palabras
input_list(L) :-
    read_line_to_codes(user_input, Cs),
    atom_codes(A, Cs),
    atomic_list_concat(L, ' ', A).

% Funcion para convertir la entrada en un string
input_string(A) :-
    read_line_to_codes(user_input, Cs),
    atom_codes(A, Cs).

% Miembro
miembro(X, [X|_]).
miembro(X, [_|T]) :- miembro(X, T).


% Funciones para validar la entrada del usuario en distintas categor�as.

% Funci�n para validar el padecimiento
comparePadecimientos(X) :-
    listaTipoDePadecimientos(L),
    miembro(X, L), !.
comparePadecimientos(_) :-
    nl, writeln('Padecimiento no v�lido. Int�ntelo de nuevo.'), nl,
    preguntar_padecimiento(_).

% Funci�n para validar las calor�as
compareCalorias(X) :-
    listaCalorias(L),
    miembro(X, L), !.
compareCalorias(_) :-
    nl, writeln('Cantidad de calor�as no v�lida. Int�ntelo de nuevo.'), nl,
    preguntar_calorias(_).

% Funci�n para validar la actividad f�sica
compareActividad(X) :-
    listaActividad(L),
    miembro(X, L), !.
compareActividad(_) :-
    nl, writeln('Actividad no v�lida. Int�ntelo de nuevo.'), nl,
    preguntar_actividad(_).

% Funci�n para validar la frecuencia de actividad f�sica
compareFrecuencia(X) :-
    listaFrecuencia(L),
    miembro(X, L), !.
compareFrecuencia(_) :-
    nl, writeln('Frecuencia no v�lida. Int�ntelo de nuevo.'), nl,
    preguntar_frecuencia(_).

% Funci�n para validar el tipo de dieta
compareTipoDieta(X) :-
    listaTipoDieta(L),
    miembro(X, L), !.
compareTipoDieta(_) :-
    nl, writeln('Tipo de dieta no v�lido. Int�ntelo de nuevo.'), nl,
    preguntar_tipo_dieta(_).

% Listas para validar las entradas
listaTipoDePadecimientos(L) :- findall(X, (diet([_, _, _, _, _, [X|_], _, _, _])), L).
listaCalorias(L) :- findall(X, (diet([_, _, X, _, _, _, _, _, _])), L).
listaActividad(L) :- findall(X, (diet([_, _, _, _, _, _, _, X, _])), L).
listaFrecuencia(L) :- findall(X, (diet([_, _, _, X, _, _, _, _, _])), L).
listaTipoDieta(L) :- findall(X, (diet([_, X, _, _, _, _, _, _, _])), L).

% Preguntas espec�ficas al usuario

% Pregunta sobre padecimientos
preguntar_padecimiento(Padecimiento) :-
    nl, writeln('�Tienes alg�n padecimiento? (Ejemplo: hipertensi�n, diabetes, etc.)'),
    input_to_string(Respuesta),
    comparePadecimientos(Respuesta),
    Padecimiento = Respuesta.

% Pregunta sobre calor�as
preguntar_calorias(Calorias) :-
    nl, writeln('�Cu�ntas calor�as diarias quieres consumir? (Ejemplo: 2000, 1500, etc.)'),
    input_to_string(Respuesta),
    compareCalorias(Respuesta),
    Calorias = Respuesta.

% Pregunta sobre la actividad f�sica
preguntar_actividad(Actividad) :-
    nl, writeln('�Realizas alguna actividad f�sica? (Ejemplo: correr, nadar, etc.)'),
    input_to_string(Respuesta),
    compareActividad(Respuesta),
    Actividad = Respuesta.

% Pregunta sobre la frecuencia de actividad f�sica
preguntar_frecuencia(Frecuencia) :-
    nl, writeln('�Con qu� frecuencia realizas actividad f�sica? (Inicial, intermedio, avanzado)'),
    input_to_string(Respuesta),
    compareFrecuencia(Respuesta),
    Frecuencia = Respuesta.

% Pregunta sobre el tipo de dieta
preguntar_tipo_dieta(TipoDieta) :-
    nl, writeln('�Qu� tipo de dieta prefieres? (Ejemplo: vegetariana, keto, etc.)'),
    input_to_string(Respuesta),
    compareTipoDieta(Respuesta),
    TipoDieta = Respuesta.

% Funci�n de ingreso de datos y ejecuci�n del flujo
ingresar_datos(NombreDieta, Padecimientos, Calorias, Actividad, Frecuencia, TipoDieta, MenuDieta) :-

    sleep(0.5), nl, writeln('Hola, bienvenido al asistente de dietas. Empecemos...'),

    % Preguntar sobre el padecimiento
    preguntar_padecimiento(Padecimientos),

    % Preguntar sobre calor�as
    preguntar_calorias(Calorias),

    % Preguntar sobre actividad f�sica
    preguntar_actividad(Actividad),

    % Preguntar sobre la frecuencia de actividad f�sica
    preguntar_frecuencia(Frecuencia),

    % Preguntar sobre el tipo de dieta
    preguntar_tipo_dieta(TipoDieta).

    % Buscar dieta en base de datos


% Funci�n principal de inicio del programa
inicio :-
    ingresar_datos(_, _, _, _, _, _, _).


plan_diario(MinCalorias, MaxCalorias, NivelActividad, Padecimiento, TipoDieta) :-
	seleccionar_comida(desayuno, NivelActividad, Padecimiento, TipoDieta, CaloriasDesayuno, DescripcionDesayuno),
	seleccionar_comida(merienda, NivelActividad, Padecimiento, TipoDieta, CaloriasMerienda, DescripcionMerienda),
	seleccionar_comida(almuerzo, NivelActividad, Padecimiento, TipoDieta, CaloriasAlmuerzo, DescripcionAlmuerzo),
	seleccionar_comida(merienda, NivelActividad, Padecimiento, TipoDieta, CaloriasCafecito, DescripcionCafecito),
	seleccionar_comida(cena, NivelActividad, Padecimiento, TipoDieta, CaloriasCena, DescripcionCena),

	CaloriasTotales is CaloriasDesayuno + CaloriasMerienda + CaloriasAlmuerzo + CaloriasCafecito + CaloriasCena,

	format('Calorias Diarias: ~w~n', [CaloriasTotales]),
	CaloriasTotales >= MinCalorias,
	CaloriasTotales =< MaxCalorias,

	format('Desayuno: ~w~n', [DescripcionDesayuno]),
	format('Merienda: ~w~n', [DescripcionMerienda]),
	format('Almuerzo: ~w~n', [DescripcionAlmuerzo]),
	format('Cafecito: ~w~n', [DescripcionCafecito]),
	format('Cena: ~w~n', [DescripcionCena]).

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
