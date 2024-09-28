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

% 12 desayunos
comida(desayuno1, 250, desayuno, [inicial, intermedio], 
	[baja_en_grasas, vegetariana, dash, mediterranea], 
	[hipercolesterolemia, hipertension, obesidad, diabetes_tipo2], 
	"100g de avena cocida con 100g de fresas y 200ml de leche descremada").
comida(desayuno2, 400, desayuno, [inicial, intermedio, avanzado], 
	[keto, low_carb, proteica], 
	[diabetes_tipo2, obesidad, dislipidemia, hipertension], 
	"2 huevos revueltos con 3 tiras de tocino (50g) y 1/2 aguacate (75g)").
comida(desayuno3, 300, desayuno, [inicial, intermedio], 
	[vegana, sin_gluten, alcalina], 
	[celiaquia, desnutricion, obesidad, diabetes_tipo1], 
	"2 rebanadas de pan sin gluten (50g) con 1/2 aguacate (75g) y 50g de tomate en rodajas").
comida(desayuno4, 350, desayuno, [intermedio, avanzado], 
	[proteica, paleo, flexitariana], 
	[desnutricion, diabetes_tipo1, hipertension, dislipidemia], 
	"3 huevos revueltos con 60g de jamón de pavo y 50g de espinacas salteadas").
comida(desayuno5, 280, desayuno, [inicial, intermedio], 
	[mediterranea, dash, baja_en_grasas, vegetariana], 
	[hipertension, dislipidemia, diabetes_tipo2, obesidad], 
	"150g de yogurt griego natural con 20g de nueces y 10g de miel").
comida(desayuno6, 350, desayuno, [inicial, intermedio], 
	[flexitariana, baja_en_grasas], 
	[dislipidemia, hipertension, diabetes_tipo1, obesidad], 
	"1 batido de frutas (plátano, fresas) con 200ml de leche de almendra").
comida(desayuno7, 300, desayuno, [inicial, intermedio, avanzado], 
	[keto, low_carb], 
	[diabetes_tipo2, hipertension, obesidad], 
	"3 claras de huevo revueltas con espinacas y 50g de queso feta").
comida(desayuno8, 400, desayuno, [intermedio, avanzado], 
	[vegana, sin_gluten], 
	[celiaquia, desnutricion, dislipidemia, diabetes_tipo1], 
	"100g de avena cocida con 30g de semillas de chía y 100g de fruta fresca").
comida(desayuno9, 320, desayuno, [inicial, intermedio], 
	[alcalina, mediterranea], 
	[hipercolesterolemia, obesidad, hipertension], 
	"2 tostadas integrales con aguacate y 50g de tomate").
comida(desayuno10, 290, desayuno, [inicial, intermedio], 
	[proteica, baja_en_grasas], 
	[diabetes_tipo1, desnutricion, obesidad], 
	"1 yogur natural con 30g de granola y frutos rojos").
comida(desayuno11, 370, desayuno, [intermedio, avanzado], 
	[dash, vegetariana], 
	[hipertension, dislipidemia, diabetes_tipo2], 
	"150g de ensalada de frutas (manzana, pera, kiwi) con 20g de nueces").
comida(desayuno12, 360, desayuno, [inicial, intermedio], 
	[paleo, flexitariana], 
	[desnutricion, diabetes_tipo1, hipertension], 
	"2 pancakes de plátano con miel y 50g de frutas frescas").

% 12 meriendas de mañana
comida(merienda_manana1, 180, merienda, [inicial, intermedio], 
	[baja_en_grasas, dash, sin_gluten, vegetariana], 
	[hipercolesterolemia, hipertension, obesidad, diabetes_tipo2], 
	"150g de yogurt light sin azúcar con 30g de granola sin azúcar añadida").
comida(merienda_manana2, 250, merienda, [intermedio, avanzado], 
	[keto, low_carb, proteica, paleo], 
	[diabetes_tipo2, obesidad, dislipidemia, hipertension], 
	"50g de queso cheddar con 20g de nueces").
comida(merienda_manana3, 220, merienda, [inicial, intermedio], 
	[vegana, sin_gluten, alcalina, flexitariana, vegetariana], 
	[celiaquia, desnutricion, diabetes_tipo1, obesidad], 
	"150g de frutas frescas (manzana, pera) con 30g de almendras").
comida(merienda_manana4, 320, merienda, [intermedio, avanzado], 
	[proteica, paleo, baja_en_grasas, low_carb], 
	[obesidad, desnutricion, diabetes_tipo2, hipercolesterolemia], 
	"250ml de batido de proteína con 1 cucharada (20g) de mantequilla de maní").
comida(merienda_manana5, 200, merienda, [inicial, intermedio], 
	[mediterranea, flexitariana, baja_en_grasas, dash, vegetariana], 
	[dislipidemia, hipertension, obesidad, diabetes_tipo1], 
	"250ml de batido de plátano (1 plátano) con 50g de espinacas y 200ml de leche de almendra").
comida(merienda_manana6, 180, merienda, [inicial, intermedio], 
	[alcalina, vegana, vegetariana, sin_gluten], 
	[desnutricion, diabetes_tipo1, obesidad, celiaquia], 
	"200g de palitos de zanahoria con 50g de hummus").
comida(merienda_manana7, 210, merienda, [intermedio, avanzado], 
	[proteica, sin_gluten, low_carb, keto], 
	[diabetes_tipo2, hipertension, dislipidemia, obesidad], 
	"1 batido de proteínas con 200ml de leche de almendra y 30g de cacao en polvo").
comida(merienda_manana8, 250, merienda, [inicial, intermedio], 
	[flexitariana, baja_en_grasas, vegetariana, dash], 
	[obesidad, hipertension, diabetes_tipo1, dislipidemia], 
	"150g de ensalada de frutas con 20g de nueces y miel").
comida(merienda_manana9, 230, merienda, [inicial, intermedio], 
	[keto, low_carb, proteica], 
	[diabetes_tipo2, dislipidemia, obesidad], 
	"3 huevos duros con 50g de aceitunas negras").
comida(merienda_manana10, 240, merienda, [intermedio, avanzado], 
	[proteica, mediterranea, flexitariana, paleo], 
	[hipertension, obesidad, desnutricion, diabetes_tipo2], 
	"150g de requesón con 50g de miel y 30g de almendras").
comida(merienda_manana11, 260, merienda, [inicial, intermedio], 
	[vegana, sin_gluten, vegetariana, alcalina], 
	[celiaquia, dislipidemia, diabetes_tipo2, hipertension], 
	"200g de batido de plátano con 30g de semillas de chía").
comida(merienda_manana12, 300, merienda, [intermedio, avanzado], 
	[alcalina, vegetariana, mediterranea, flexitariana], 
	[hipercolesterolemia, obesidad, hipertension, diabetes_tipo1], 
	"1 tazón de yogur griego natural con 100g de fresas y 20g de granola sin azúcar").

% 12 almuerzos
comida(almuerzo1, 400, almuerzo, [intermedio, avanzado], 
	[keto, paleo, proteica, low_carb], 
	[diabetes_tipo2, obesidad, hipercolesterolemia, dislipidemia], 
	"150g de pechuga de pollo a la parrilla con 1/2 aguacate (75g) y 150g de ensalada mixta (lechuga, espinaca, pepino)").
comida(almuerzo2, 350, almuerzo, [inicial, intermedio], 
	[baja_en_grasas, vegetariana, dash, mediterranea], 
	[hipertension, dislipidemia, diabetes_tipo1, obesidad], 
	"100g de quinoa cocida con 80g de garbanzos y 150g de verduras asadas (calabacín, pimiento, cebolla)").
comida(almuerzo3, 330, almuerzo, [inicial, intermedio], 
	[vegana, sin_gluten, alcalina, vegetariana], 
	[celiaquia, desnutricion, obesidad], 
	"2 tortillas de maíz (50g) con 120g de lentejas cocidas y 50g de guacamole").
comida(almuerzo4, 420, almuerzo, [intermedio, avanzado], 
	[proteica, mediterranea, flexitariana, low_carb], 
	[desnutricion, diabetes_tipo1, obesidad, hipertension], 
	"150g de filet de pescado a la plancha con 100g de espárragos y 100g de papas hervidas").
comida(almuerzo5, 450, almuerzo, [inicial, intermedio], 
	[dash, flexitariana, baja_en_grasas, vegetariana], 
	[hipercolesterolemia, hipertension, dislipidemia, diabetes_tipo2], 
	"150g de pechuga de pollo a la plancha con 100g de arroz integral y 100g de vegetales hervidos (brócoli, zanahoria)").
comida(almuerzo6, 360, almuerzo, [inicial, intermedio], 
	[vegana, mediterranea, alcalina, vegetariana], 
	[desnutricion, diabetes_tipo2, hipertension, obesidad], 
	"120g de falafel con 100g de tabulé y 50g de hummus").
comida(almuerzo7, 420, almuerzo, [intermedio, avanzado], 
	[low_carb, keto, proteica, paleo], 
	[diabetes_tipo2, dislipidemia, obesidad, hipertension], 
	"150g de carne de res asada con 100g de col rizada salteada y 1/2 aguacate (75g)").
comida(almuerzo8, 340, almuerzo, [inicial, intermedio], 
	[sin_gluten, dash, flexitariana, baja_en_grasas], 
	[hipercolesterolemia, hipertension, obesidad, diabetes_tipo1], 
	"100g de arroz basmati con 100g de salmón a la plancha y 50g de espinacas hervidas").
comida(almuerzo9, 390, almuerzo, [intermedio, avanzado], 
	[mediterranea, flexitariana, proteica], 
	[diabetes_tipo1, dislipidemia, obesidad, hipertension], 
	"150g de filete de atún a la plancha con 100g de ensalada de espinaca y tomate").
comida(almuerzo10, 400, almuerzo, [inicial, intermedio], 
	[baja_en_grasas, vegetariana, sin_gluten, dash], 
	[hipercolesterolemia, hipertension, diabetes_tipo1, desnutricion], 
	"120g de tofu asado con 100g de verduras al vapor y 50g de puré de batata").
comida(almuerzo11, 380, almuerzo, [intermedio, avanzado], 
	[keto, paleo, proteica, low_carb], 
	[diabetes_tipo2, obesidad, dislipidemia, hipertension], 
	"150g de bistec de cerdo a la parrilla con 100g de champiñones salteados y 1/2 aguacate (75g)").
comida(almuerzo12, 360, almuerzo, [inicial, intermedio], 
	[mediterranea, vegetariana, flexitariana, dash], 
	[hipercolesterolemia, obesidad, hipertension, desnutricion], 
	"100g de pasta integral con 120g de tomates cherry y 50g de queso feta").

% 12 meriendas de tarde
comida(merienda_tarde1, 150, merienda, [inicial, intermedio], 
	[baja_en_grasas, dash, mediterranea, flexitariana], 
	[hipertension, dislipidemia, obesidad, diabetes_tipo2], 
	"1 rebanada de pan integral (50g) con 30g de queso fresco bajo en grasa").
comida(merienda_tarde2, 200, merienda, [intermedio, avanzado], 
	[keto, low_carb, proteica, paleo], 
	[diabetes_tipo2, obesidad, hipercolesterolemia], 
	"2 huevos cocidos con 50g de aceitunas verdes").
comida(merienda_tarde3, 180, merienda, [inicial, intermedio], 
	[vegana, sin_gluten, alcalina, vegetariana], 
	[celiaquia, desnutricion, diabetes_tipo1], 
	"100g de palitos de zanahoria con 50g de hummus").
comida(merienda_tarde4, 320, merienda, [intermedio, avanzado], 
	[proteica, paleo, keto, low_carb], 
	[desnutricion, obesidad, dislipidemia], 
	"250ml de batido de proteína con 200ml de leche de almendra").
comida(merienda_tarde5, 230, merienda, [inicial, intermedio], 
	[mediterranea, flexitariana, baja_en_grasas, dash], 
	[dislipidemia, hipertension, diabetes_tipo2, obesidad], 
	"100g de frutas mixtas (manzana, piña, uvas) con 150g de yogurt griego y 10g de miel").
comida(merienda_tarde6, 190, merienda, [inicial, intermedio], 
	[sin_gluten, vegana, vegetariana, alcalina], 
	[celiaquia, diabetes_tipo1, desnutricion, hipertension], 
	"50g de nueces mixtas con 100g de uvas rojas").
comida(merienda_tarde7, 210, merienda, [intermedio, avanzado], 
	[proteica, keto, paleo, low_carb], 
	[diabetes_tipo2, obesidad, dislipidemia], 
	"50g de jamón de pavo con 50g de pepino en rodajas").
comida(merienda_tarde8, 250, merienda, [inicial, intermedio], 
	[vegetariana, mediterranea, baja_en_grasas, dash], 
	[hipercolesterolemia, hipertension, obesidad], 
	"1 rebanada de pan integral con 100g de queso cottage y 50g de fresas").
comida(merienda_tarde9, 180, merienda, [inicial, intermedio], 
	[vegana, alcalina, sin_gluten, vegetariana], 
	[celiaquia, desnutricion, hipertension], 
	"150g de pepino y pimiento en rodajas con 50g de guacamole").
comida(merienda_tarde10, 200, merienda, [intermedio, avanzado], 
	[low_carb, keto, proteica], 
	[diabetes_tipo2, obesidad, dislipidemia, hipertension], 
	"50g de salmón ahumado con 1/2 aguacate").
comida(merienda_tarde11, 220, merienda, [inicial, intermedio], 
	[flexitariana, mediterranea, dash, baja_en_grasas], 
	[hipertension, hipercolesterolemia, diabetes_tipo2], 
	"50g de queso mozzarella bajo en grasa con 100g de tomate cherry").
comida(merienda_tarde12, 170, merienda, [inicial, intermedio], 
	[vegana, sin_gluten, alcalina, vegetariana], 
	[celiaquia, desnutricion, diabetes_tipo1], 
	"50g de hummus con 100g de palitos de pepino y zanahoria").

% 12 cenas
comida(cena1, 350, cena, [inicial, intermedio], 
	[baja_en_grasas, dash, mediterranea, flexitariana], 
	[hipercolesterolemia, hipertension, diabetes_tipo2, obesidad], 
	"150g de filete de pescado al vapor con 100g de espárragos y 100g de papas hervidas").
comida(cena2, 480, cena, [intermedio, avanzado], 
	[keto, low_carb, proteica, paleo], 
	[diabetes_tipo2, obesidad, dislipidemia, hipercolesterolemia], 
	"200g de carne de res a la parrilla con 100g de espinacas salteadas en aceite de oliva").
comida(cena3, 400, cena, [inicial, intermedio], 
	[vegana, sin_gluten, alcalina, vegetariana], 
	[celiaquia, desnutricion, diabetes_tipo1], 
	"150g de lentejas estofadas con 100g de arroz integral").
comida(cena4, 450, cena, [intermedio, avanzado], 
	[proteica, mediterranea, flexitariana, baja_en_grasas], 
	[desnutricion, obesidad, diabetes_tipo1, hipertension], 
	"200g de pollo al horno con 150g de ensalada mixta (lechuga, pepino, tomate)").
comida(cena5, 420, cena, [inicial, intermedio], 
	[flexitariana, paleo, baja_en_grasas, dash], 
	[obesidad, dislipidemia, diabetes_tipo2, hipertension], 
	"2 tacos de pollo (150g) con 2 tortillas de maíz (50g) y 50g de salsa de aguacate").
comida(cena6, 390, cena, [inicial, intermedio], 
	[sin_gluten, vegana, vegetariana, alcalina], 
	[celiaquia, desnutricion, obesidad], 
	"200g de tofu salteado con 100g de brócoli y 50g de zanahoria").
comida(cena7, 460, cena, [intermedio, avanzado], 
	[keto, low_carb, proteica, paleo], 
	[diabetes_tipo2, obesidad, dislipidemia], 
	"200g de costillas de cerdo asadas con 100g de espárragos y 50g de salsa de aguacate").
comida(cena8, 410, cena, [inicial, intermedio], 
	[vegetariana, mediterranea, flexitariana, dash], 
	[hipertension, diabetes_tipo1, desnutricion], 
	"150g de huevos revueltos con 100g de pimientos asados y 50g de queso feta").
comida(cena9, 400, cena, [intermedio, avanzado], 
	[proteica, mediterranea, baja_en_grasas, paleo], 
	[diabetes_tipo2, obesidad, hipertension], 
	"150g de salmón al horno con 100g de espárragos y 50g de quinoa").
comida(cena10, 370, cena, [inicial, intermedio], 
	[vegana, alcalina, sin_gluten, vegetariana], 
	[celiaquia, desnutricion, diabetes_tipo1], 
	"200g de arroz integral con 100g de guisantes y 50g de guacamole").
comida(cena11, 430, cena, [intermedio, avanzado], 
	[proteica, keto, low_carb, paleo], 
	[diabetes_tipo2, obesidad, dislipidemia], 
	"200g de pechuga de pavo al horno con 100g de espinacas y 50g de aguacate").
comida(cena12, 360, cena, [inicial, intermedio], 
	[vegetariana, flexitariana, baja_en_grasas, dash], 
	[hipertension, hipercolesterolemia, diabetes_tipo2], 
	"100g de arroz integral con 150g de tofu salteado y 100g de calabacín asado").
