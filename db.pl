% 8 padecimientos (poner en un comment
padecimiento(dislipidemia, "Problemas de colesterol elevado").
padecimiento(hipercolesterolemia, "Colesterol alto").
padecimiento(hipertension, "Alta presión arterial").
padecimiento(diabetes_tipo1, "Diabetes tipo 1").
padecimiento(diabetes_tipo2, "Diabetes tipo 2").
padecimiento(obesidad, "Exceso de peso").
padecimiento(desnutricion, "Deficiencia de nutrientes").
padecimiento(celiaquia, "Intolerancia al gluten").

% 4 tipos de dietas
tipo_dieta(keto).
tipo_dieta(proteica).
tipo_dieta(vegetariana).
tipo_dieta(alcalina).

% 3 niveles de actividad
nivel_actividad(inicial, "0-2 veces por semana").
nivel_actividad(intermedio, "3-4 veces por semana").
nivel_actividad(avanzado, "5 o más veces por semana").

% cantidades de calorias
calorias(['1200']).
calorias(['1400']).
calorias(['1600']).
calorias(['1800']).
calorias(['2000']).
calorias(['2200']).
calorias(['2400']).
calorias(['2600']).
calorias(['2800']).
calorias(['3000']).
calorias(['3200']).
calorias(['3400']).



% Una gran cantidad de posibilidades de dietas.

% 5 desayunos
comida(desayuno1, desayuno, 'calorias', [inicial, intermedio], [baja_en_grasas, vegetariana], [hipercolesterolemia, hipertension],
    "100g de avena cocida con 100g de fresas y 200ml de leche descremada").
comida(desayuno2, desayuno, 'calorias', [inicial, intermedio, avanzado], [keto, low_carb], [diabetes_tipo2, obesidad],
    "2 huevos revueltos con 3 tiras de tocino (50g) y 1/2 aguacate (75g)").
comida(desayuno3, desayuno, 'calorias', [inicial, intermedio], [vegana, sin_gluten], [celiaquia],
    "2 rebanadas de pan sin gluten (50g) con 1/2 aguacate (75g) y 50g de tomate en rodajas").
comida(desayuno4, desayuno, 'calorias', [intermedio, avanzado], [proteica, paleo], [desnutricion],
    "3 huevos revueltos con 60g de jamón de pavo y 50g de espinacas salteadas").
comida(desayuno5, desayuno, 'calorias', [inicial, intermedio], [mediterranea, dash], [hipertension, dislipidemia],
    "150g de yogurt griego natural con 20g de nueces y 10g de miel").

% 5 meriendas de mananeras
comida(merienda_manana1, merienda, 'calorias', [inicial, intermedio], [baja_en_grasas, dash], [hipercolesterolemia, hipertension],
    "150g de yogurt light sin azúcar con 30g de granola sin azúcar añadida").
comida(merienda_manana2, merienda, 'calorias', [intermedio, avanzado], [keto, low_carb], [diabetes_tipo2],
    "50g de queso cheddar con 20g de nueces").
comida(merienda_manana3, merienda, 'calorias', [inicial, intermedio], [vegana, sin_gluten], [celiaquia, desnutricion],
    "150g de frutas frescas (manzana, pera) con 30g de almendras").
comida(merienda_manana4, merienda, 'calorias', [intermedio, avanzado], [proteica, paleo], [obesidad, desnutricion],
    "250ml de batido de proteína con 1 cucharada (20g) de mantequilla de maní").
comida(merienda_manana5, merienda, 'calorias', [inicial, intermedio], [mediterranea, flexitariana], [dislipidemia],
    "250ml de batido de plátano (1 plátano) con 50g de espinacas y 200ml de leche de almendra").

% 5 almuerzos
comida(almuerzo1, almuerzo, 'calorias', [intermedio, avanzado], [keto, paleo], [diabetes_tipo2, obesidad],
    "150g de pechuga de pollo a la parrilla con 1/2 aguacate (75g) y 150g de ensalada mixta (lechuga, espinaca, pepino)").
comida(almuerzo2, almuerzo, 'calorias', [inicial, intermedio], [baja_en_grasas, vegetariana], [hipertension, dislipidemia],
    "100g de quinoa cocida con 80g de garbanzos y 150g de verduras asadas (calabacín, pimiento, cebolla)").
comida(almuerzo3, almuerzo, 'calorias', [inicial, intermedio], [vegana, sin_gluten], [celiaquia],
    "2 tortillas de maíz (50g) con 120g de lentejas cocidas y 50g de guacamole").
comida(almuerzo4, almuerzo, 'calorias', [intermedio, avanzado], [proteica, mediterranea], [desnutricion],
    "150g de filet de pescado a la plancha con 100g de espárragos y 100g de papas hervidas").
comida(almuerzo5, almuerzo, 'calorias', [inicial, intermedio], [dash, flexitariana], [hipercolesterolemia, hipertension],
    "150g de pechuga de pollo a la plancha con 100g de arroz integral y 100g de vegetales hervidos (brócoli, zanahoria)").

% 5 cafecitos
comida(merienda_tarde1, merienda, 'calorias', [inicial, intermedio], [baja_en_grasas, dash], [hipertension, dislipidemia],
    "1 rebanada de pan integral (50g) con 30g de queso fresco bajo en grasa").
comida(merienda_tarde2, merienda, 'calorias',  [intermedio, avanzado], [keto, low_carb], [diabetes_tipo2],
    "2 huevos cocidos con 50g de aceitunas verdes").
comida(merienda_tarde3, merienda, 'calorias',  [inicial, intermedio], [vegana, sin_gluten], [celiaquia],
    "100g de palitos de zanahoria con 50g de hummus").
comida(merienda_tarde4, merienda, 'calorias', [intermedio, avanzado], [proteica, paleo], [desnutricion],
    "250ml de batido de proteína con 200ml de leche de almendra").
comida(merienda_tarde5, merienda, 'calorias', [inicial, intermedio], [mediterranea, flexitariana], [dislipidemia],
    "100g de frutas mixtas (manzana, piña, uvas) con 150g de yogurt griego y 10g de miel").

% 5 cenas
comida(cena1, cena, 'calorias', [inicial, intermedio], [baja_en_grasas, dash], [hipercolesterolemia, hipertension],
    "150g de filete de pescado al vapor con 100g de espárragos y 100g de papas hervidas").
comida(cena2, cena, 'calorias', [intermedio, avanzado], [keto, low_carb], [diabetes_tipo2, obesidad],
    "200g de carne de res a la parrilla con 100g de espinacas salteadas en aceite de oliva").
comida(cena3, cena, 'calorias', [inicial, intermedio], [vegana, sin_gluten], [celiaquia],
    "150g de lentejas estofadas con 100g de arroz integral").
comida(cena4, cena, 'calorias', [intermedio, avanzado], [proteica, mediterranea], [desnutricion],
    "200g de pollo al horno con 150g de ensalada mixta (lechuga, pepino, tomate)").
comida(cena5, cena, 'calorias', [inicial, intermedio], [flexitariana, paleo], [obesidad],
    "2 tacos de pollo (150g) con 2 tortillas de maíz (50g) y 50g de salsa de aguacate").
