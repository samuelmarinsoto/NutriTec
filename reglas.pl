% Importing the knowledge base
:- consult('db.pl').

% Match activity levels based on input
match_activity([], _).
match_activity([Single|_], Niveles) :-
    member(Single, Niveles), !.
match_activity([First|Rest], Niveles) :-
    member(First, Niveles), !;
    match_activity(Rest, Niveles).

% Match conditions based on input
match_condition(_, []) :- !.
match_condition(Padecimientos, PadecimientosList) :-
    (   var(Padecimientos)
    ->  true
    ;   (   is_list(Padecimientos)
        ->  forall(member(Padecimiento, Padecimientos), member(Padecimiento, PadecimientosList))
        ;   member(Padecimientos, PadecimientosList)
        )
    ).

% Match diet types based on input
match_diet(_, []) :- !.
match_diet(TiposDieta, TiposList) :-
    (   var(TiposDieta)
    ->  true
    ;   (   is_list(TiposDieta)
        ->  forall(member(Tipo, TiposDieta), member(Tipo, TiposList))
        ;   member(TiposDieta, TiposList)
        )
    ).

% Find meals of the specified type while checking conditions and summing calories
find_meal(MealType, NivelesActividad, Padecimientos, TiposDieta, Calorias, Descripcion) :-
    comida(Meal, Calorias, MealType, Niveles, Tipos, PadecimientosList, Descripcion),
    format('Trying meal: ~w~n', [Meal]),
    format('Calories: ~w, Description: ~w~n', [Calorias, Descripcion]),
    match_activity(NivelesActividad, Niveles),
    match_condition(Padecimientos, PadecimientosList),
    match_diet(TiposDieta, Tipos).

% Generate the daily meal plan based on input parameters
plan_diario(NivelesActividad, Padecimientos, TiposDieta, MinCalorias, MaxCalorias) :-
    find_meal(desayuno, NivelesActividad, Padecimientos, TiposDieta, BreakfastCalories, BreakfastDescripcion),
    find_meal(merienda_manana, NivelesActividad, Padecimientos, TiposDieta, MorningSnackCalories, MorningSnackDescripcion),
    find_meal(almuerzo, NivelesActividad, Padecimientos, TiposDieta, LunchCalories, LunchDescripcion),
    find_meal(merienda_tarde, NivelesActividad, Padecimientos, TiposDieta, AfternoonSnackCalories, AfternoonSnackDescripcion),
    find_meal(cena, NivelesActividad, Padecimientos, TiposDieta, DinnerCalories, DinnerDescripcion),

    TotalCalorias is BreakfastCalories + MorningSnackCalories + LunchCalories + AfternoonSnackCalories + DinnerCalories,
    
    format('Total Calories for the meal plan: ~w~n', [TotalCalorias]),
    TotalCalorias >= MinCalorias,
    TotalCalorias =< MaxCalorias,
    
    format('Breakfast: ~w~n', [BreakfastDescripcion]),
    format('Morning Snack: ~w~n', [MorningSnackDescripcion]),
    format('Lunch: ~w~n', [LunchDescripcion]),
    format('Afternoon Snack: ~w~n', [AfternoonSnackDescripcion]),
    format('Dinner: ~w~n', [DinnerDescripcion]).
