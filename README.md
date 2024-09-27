# NutriTec

## Dependencias

Compilador `SWI-Prolog`

## Todo

La vara es sacarle `TiposDieta`, `Padecimientos`, y `NivelesActividad` al usuario, y que le tire una dieta que "matchee"

* [ ] Parser de oraciones
  * [ ] Gramáticas libres de contexto en específico BNF
    * [ ] El sistema reconoce
      * [ ] `PalabrasClave`
      * [ ] `SintagmasNominales`
      * [ ] `SintagmaVerbal`
    * [ ] Determina si oracion es una
      * [ ] `Pregunta`
        * [ ] Da una respuesta al usuario utilizando `PalabrasClave`
      * [ ]  `Entrada`
        * [ ] Saca `SintagmaNominal`
        * [ ] Busca `SintagmaNominal` en
          * [ ] `TipoDietas`
          * [ ] `Padecimientos`
          * [ ] `NivelesActividad`
        * [ ] Match? 
          * [ ] Guarda en `ModeloUsuario`
  * [ ]  Es importante mencionar que el sistema puede NO encontrar una palabra clave en la oración de entrada por lo que debe tener una oración conectora para poder proseguir con la conversación. Se sugiere utilizar listas, pero no se limita a estas.
* [ ] `ModeloUsuario`
  * [ ] Un espacio para guardar "matches" de bases de `TiposDieta`, `Padecimientos`, y `NivelesActividad`
  * [ ] Lógica para matchear modelo de usuario con base de `Dietas`
* [ ] Bases de datos
  * [ ] `PalabrasClave`
    * [ ] `Inicio` de una conversación
      * [ ] `Hola`
      * [ ] `Buenos días`
      * [ ] `Buenas tardes`
    * [ ] `Fin` de una conversación
      * [ ] `Gracias`
      * [ ] `Muchas gracias`
      * [ ] `Adios`
    * [ ] `Preguntas`
      * [ ] `Que`
      * [ ] `Cual`
      * [ ] `Por que`  
  * [x] `TiposDietas` (12 tipos)
    * [x] `Keto`
    * [x] `Proteica`
    * [x] `Vegetariana`
    * [x] `Alcalina`
    * [x] etc.
  * [x] `Padecimientos` (12 tipos)
    * [x] `Dislipidemia` “Problemas del control del colesterol” “Dieta baja en grasas”
    * [x] `Hipercolesterolemia` “aumento de los niveles considerados normales de colesterol en la sangre” “Dieta vegana”
    * [x] etc.
  * [x] `NivelesActividad` (ejercicio)
    * [x] `Inicial` (0-2 veces)
    * [x] `Intermedio` (3-4 veces)
    * [x] `Avanzado` (5 ó más veces)
  * [X] `Comidas` (25 comidas diferentes)
    * [x] `Nombre`
    * [x] `TipoDietas`
    * [x] `TiempoComida` (almuerzo, cena, etc.)
    * [x] `Calorías`
    * [x] `padecimientos permitidos`
    * [x] `NivelActividad`
    * [x] `Detalle Dieta`
* [ ] Documentación
