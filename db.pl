% 8 padecimientos
padecimiento(dislipidemia).
padecimiento(hipercolesterolemia).
padecimiento(hipertension).
padecimiento(diabetes_tipo1).
padecimiento(diabetes_tipo2).
padecimiento(obesidad).
padecimiento(desnutricion).
padecimiento(celiaquia).

% 12 tipos de dietas
tipo_dieta(keto).
tipo_dieta(proteica).
tipo_dieta(vegetariana).
tipo_dieta(alcalina).
tipo_dieta(vegana).
tipo_dieta(low_carb).
tipo_dieta(mediterranea).
tipo_dieta(paleo).
tipo_dieta(baja_en_grasas).
tipo_dieta(sin_gluten).
tipo_dieta(dash).
tipo_dieta(flexitariana).

% 3 niveles de actividad
nivel_actividad(inicial, "0-2 veces por semana").
nivel_actividad(intermedio, "3-4 veces por semana").
nivel_actividad(avanzado, "5 o más veces por semana").

% 5 desayunos
comida(desayuno1, 250, desayuno, [inicial, intermedio], [baja_en_grasas, vegetariana], [hipercolesterolemia, hipertension], 
    "100g de avena cocida con 100g de fresas y 200ml de leche descremada").
comida(desayuno2, 400, desayuno, [inicial, intermedio, avanzado], [keto, low_carb], [diabetes_tipo2, obesidad], 
    "2 huevos revueltos con 3 tiras de tocino (50g) y 1/2 aguacate (75g)").
comida(desayuno3, 300, desayuno, [inicial, intermedio], [vegana, sin_gluten], [celiaquia], 
    "2 rebanadas de pan sin gluten (50g) con 1/2 aguacate (75g) y 50g de tomate en rodajas").
comida(desayuno4, 350, desayuno, [intermedio, avanzado], [proteica, paleo], [desnutricion], 
    "3 huevos revueltos con 60g de jamón de pavo y 50g de espinacas salteadas").
comida(desayuno5, 280, desayuno, [inicial, intermedio], [mediterranea, dash], [hipertension, dislipidemia], 
    "150g de yogurt griego natural con 20g de nueces y 10g de miel").

% 5 meriendas de mañana
comida(merienda_manana1, 180, merienda, [inicial, intermedio], [baja_en_grasas, dash], [hipercolesterolemia, hipertension], 
    "150g de yogurt light sin azúcar con 30g de granola sin azúcar añadida").
comida(merienda_manana2, 250, merienda, [intermedio, avanzado], [keto, low_carb], [diabetes_tipo2], 
    "50g de queso cheddar con 20g de nueces").
comida(merienda_manana3, 220, merienda, [inicial, intermedio], [vegana, sin_gluten], [celiaquia, desnutricion], 
    "150g de frutas frescas (manzana, pera) con 30g de almendras").
comida(merienda_manana4, 320, merienda, [intermedio, avanzado], [proteica, paleo], [obesidad, desnutricion], 
    "250ml de batido de proteína con 1 cucharada (20g) de mantequilla de maní").
comida(merienda_manana5, 200, merienda, [inicial, intermedio], [mediterranea, flexitariana], [dislipidemia], 
    "250ml de batido de plátano (1 plátano) con 50g de espinacas y 200ml de leche de almendra").

% 5 almuerzos
comida(almuerzo1, 400, almuerzo, [intermedio, avanzado], [keto, paleo], [diabetes_tipo2, obesidad], 
    "150g de pechuga de pollo a la parrilla con 1/2 aguacate (75g) y 150g de ensalada mixta (lechuga, espinaca, pepino)").
comida(almuerzo2, 350, almuerzo, [inicial, intermedio], [baja_en_grasas, vegetariana], [hipertension, dislipidemia], 
    "100g de quinoa cocida con 80g de garbanzos y 150g de verduras asadas (calabacín, pimiento, cebolla)").
comida(almuerzo3, 330, almuerzo, [inicial, intermedio], [vegana, sin_gluten], [celiaquia], 
    "2 tortillas de maíz (50g) con 120g de lentejas cocidas y 50g de guacamole").
comida(almuerzo4, 420, almuerzo, [intermedio, avanzado], [proteica, mediterranea], [desnutricion], 
    "150g de filet de pescado a la plancha con 100g de espárragos y 100g de papas hervidas").
comida(almuerzo5, 450, almuerzo, [inicial, intermedio], [dash, flexitariana], [hipercolesterolemia, hipertension], 
    "150g de pechuga de pollo a la plancha con 100g de arroz integral y 100g de vegetales hervidos (brócoli, zanahoria)").

% 5 meriendas de tarde
comida(merienda_tarde1, 150, merienda, [inicial, intermedio], [baja_en_grasas, dash], [hipertension, dislipidemia], 
    "1 rebanada de pan integral (50g) con 30g de queso fresco bajo en grasa").
comida(merienda_tarde2, 200, merienda, [intermedio, avanzado], [keto, low_carb], [diabetes_tipo2], 
    "2 huevos cocidos con 50g de aceitunas verdes").
comida(merienda_tarde3, 180, merienda, [inicial, intermedio], [vegana, sin_gluten], [celiaquia], 
    "100g de palitos de zanahoria con 50g de hummus").
comida(merienda_tarde4, 320, merienda, [intermedio, avanzado], [proteica, paleo], [desnutricion], 
    "250ml de batido de proteína con 200ml de leche de almendra").
comida(merienda_tarde5, 230, merienda, [inicial, intermedio], [mediterranea, flexitariana], [dislipidemia], 
    "100g de frutas mixtas (manzana, piña, uvas) con 150g de yogurt griego y 10g de miel").

% 5 cenas
comida(cena1, 350, cena, [inicial, intermedio], [baja_en_grasas, dash], [hipercolesterolemia, hipertension], 
    "150g de filete de pescado al vapor con 100g de espárragos y 100g de papas hervidas").
comida(cena2, 480, cena, [intermedio, avanzado], [keto, low_carb], [diabetes_tipo2, obesidad], 
    "200g de carne de res a la parrilla con 100g de espinacas salteadas en aceite de oliva").
comida(cena3, 400, cena, [inicial, intermedio], [vegana, sin_gluten], [celiaquia], 
    "150g de lentejas estofadas con 100g de arroz integral").
comida(cena4, 450, cena, [intermedio, avanzado], [proteica, mediterranea], [desnutricion], 
    "200g de pollo al horno con 150g de ensalada mixta (lechuga, pepino, tomate)").
comida(cena5, 420, cena, [inicial, intermedio], [flexitariana, paleo], [obesidad], 
    "2 tacos de pollo (150g) con 2 tortillas de maíz (50g) y 50g de salsa de aguacate").
