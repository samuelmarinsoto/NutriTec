% Importing the database containing facts about meals, diets, and ailments
:- consult('db.pl').

% Recommends a daily meal plan based on activity level, ailment, and diet type
recomendar_plan_diario(NivelActividad, Ailamiento, TipoDieta) :-
    % Find breakfast options
    comida(DesayunoID, desayuno, NivelesActividad, TiposDieta, Ailamientos, Desayuno),
    member(NivelActividad, NivelesActividad),
    member(TipoDieta, TiposDieta),
    member(Ailamiento, Ailamientos),
    format('desayuno: ~w~n', [Desayuno]),
    
    % Find morning snack options
    comida(MeriendaMananaID, merienda, NivelesActividadMerienda, TiposDietaMerienda, AilamientosMerienda, MeriendaManana),
    member(NivelActividad, NivelesActividadMerienda),
    member(TipoDieta, TiposDietaMerienda),
    member(Ailamiento, AilamientosMerienda),
    format('merienda: ~w~n', [MeriendaManana]),
    
    % Find lunch options
    comida(AlmuerzoID, almuerzo, NivelesActividadAlmuerzo, TiposDietaAlmuerzo, AilamientosAlmuerzo, Almuerzo),
    member(NivelActividad, NivelesActividadAlmuerzo),
    member(TipoDieta, TiposDietaAlmuerzo),
    member(Ailamiento, AilamientosAlmuerzo),
    format('almuerzo: ~w~n', [Almuerzo]),
    
    % Find afternoon snack options
    comida(MeriendaTardeID, merienda, NivelesActividadMeriendaTarde, TiposDietaMeriendaTarde, AilamientosMeriendaTarde, MeriendaTarde),
    member(NivelActividad, NivelesActividadMeriendaTarde),
    member(TipoDieta, TiposDietaMeriendaTarde),
    member(Ailamiento, AilamientosMeriendaTarde),
    format('merienda: ~w~n', [MeriendaTarde]),
    
    % Find dinner options
    comida(CenaID, cena, NivelesActividadCena, TiposDietaCena, AilamientosCena, Cena),
    member(NivelActividad, NivelesActividadCena),
    member(TipoDieta, TiposDietaCena),
    member(Ailamiento, AilamientosCena),
    format('cena: ~w~n', [Cena]),
    
    !.  % Cut to prevent backtracking once a plan is found
