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
  * [ ] `TiposDietas` (12 tipos)
    * [ ] `Keto`
    * [ ] `Proteica`
    * [ ] `Vegetariana`
    * [ ] `Alcalina`
    * [ ] etc.
  * [ ] `Padecimientos` (12 tipos)
    * [ ] `Dislipidemia` “Problemas del control del colesterol” “Dieta baja en grasas”
    * [ ] `Hipercolesterolemia` “aumento de los niveles considerados normales de colesterol en la sangre” “Dieta vegana”
    * [ ] etc.
  * [ ] `NivelesActividad` (ejercicio)
    * [ ] `Inicial` (0-2 veces)
    * [ ] `Intermedio` (3-4 veces)
    * [ ] `Avanzado` (5 ó más veces)
  * [ ] `Dietas` (12 dietas diferentes)
    * [ ] `NombreDieta`
    * [ ] `TipoDieta`
    * [ ] `Calorías`
    * [ ] `padecimientos NO recomendados`
    * [ ] `padecimiento recomendados`
    * [ ] `Actividades NO recomendadas`
    * [ ] `Actividades recomendadas`
    * [ ] `Detalle Dieta`
* [ ] Documentación
