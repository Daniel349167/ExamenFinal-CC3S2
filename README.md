# ExamenParcial-CC3S2


## Parte2
![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/23316343-cd5f-4c90-b0da-07b5f666679e)

 ![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/4e13725c-62f7-4691-96df-b6f2e268d895)

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/f2c56eab-6f0c-49f3-8c77-ea6cd1e44460)

### 1. ¿Qué está pasando con rails generate scaffold todo description:string?

Este comando realiza varias tareas: Crea un modelo llamado "Todo" con un atributo "description" de tipo "string".
Crea un controlador "TodosController" con métodos para manejar operaciones CRUD.
Genera vistas para las operaciones CRUD.
Crea una migración que define cómo crear la tabla "todos" en la base de datos.
![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/4f69a510-ef63-4301-b0f9-370e46d6ddf8)



### 2. ¿Qué hace bundle exec rake db:migrate?
Ejecuta las migraciones de la base de datos que aún no se han aplicado. En el caso de esta aplicación, creará una nueva tabla llamada "todos" con una columna "description".
![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/940e4925-327e-4962-a2e1-c7e13b2b60ba)
![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/c9f3ed61-6fac-48c9-bbb4-f27e91bf2ee2)


### 3.Agregar Migración fecha de vencimiento
![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/abc1c873-3289-4c45-b76a-bd98f076f577)

### 4. Nuevas rutas y acción del controlador
![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/dae6baad-6a35-48fc-bc80-931e258cc401)
![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/816f7482-f289-4265-b735-269bcc253c10)
- resultado:

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/fa44a442-e618-46ad-ba50-ffd71b026e03)

### 5. Preguntas:
- Agrega un nuevo atributo al modelo Todo y actualiza las vistas para mostrar y editar el nuevo campo. Para propósitos de práctica digamos que queremos agregar un nuevo campo booleano llamado "done" con un valor predeterminado de falso.

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/4c0989eb-ac04-407c-bd7a-9e213b158752)

Resultado:

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/1479e974-ae56-4390-b231-1f47040d0a0e)

- Cambia el esquema de enrutamiento. Debes suponer que queremos una nueva ruta new_todo para ir a una página que crea un nuevo ítem Todo

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/209418ce-f8a6-475a-87b3-378c56e3ff47)

Resultado:

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/015824df-0b56-45d1-9f92-f25e2b856d6a)

- Establece `todos#index` como la página de inicio de la aplicación.

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/ee4766ff-2d9c-4270-b42f-4a707c533dc5)

Resultado:

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/bd60e3b7-f0d1-4c65-8735-ea134296e36e)


- Enumera todas las migraciones. ¿Cuál es el comando para volver a una versión anterior de la base de datos? Muestra los resultados.

Migraciones:

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/18c1a833-2820-4797-a519-8a818f10f5eb)

El comando para volver es:
```shell
rails db:migrate:down VERSION=numero_de_version
```

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/0e8142b7-3003-4f2e-bd73-968dd0dc1fcf)


## Parte3
### Clonar el Repositorio WordGuesserGame Sinatra de la PC1

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/4b7d76e1-109d-4119-a1ff-4258dca3aef2)

### Correr la aplicación WordGuesserGame Ruby
![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/62515a4a-aaa2-4fd3-8723-5eb0bc98fa38)
![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/7f22416c-2e4f-4f18-8a64-2f6f656a81e9)


### 1. ¿Cuál es el objetivo de ejecutar bundle install?
Sirve para instalar todas las gemas que el proyecto necesita. Estas gemas están especificadas en el archivo Gemfile.

### 2. ¿Por qué es una buena práctica especificar –without production al ejecutarlo en su computadora de desarrollo?
Asegura que no se instalarán gemas que sólo son necesarias en un ambiente de producción. Esto hace que el ambiente de desarrollo sea más ligero y rápido.

### 3. ¿En qué parte de la estructura del directorio de la aplicación Rails está el código correspondiente al modelo WordGuesserGame?
El modelo de WordGuesserGame esta en el directorio `app/models`

### 4. ¿En qué archivo está el código que más se corresponde con la lógica del archivo app.rb de las aplicaciones Sinatra que maneja las acciones entrantes del usuario?
La funcionalidad del archivo app.rb de Sinatra en una aplicación Rails se divide principalmente en dos archivos distintos. El primero es `config/routes.rb`, que se encarga de definir las rutas de la aplicación. El segundo es `controllers/game_controller.rb`, que proporciona la lógica y funcionalidad asociadas a esas rutas.

### 5. ¿Qué clase contiene ese código?
El código de la lógica se aloja en la clase `GameController`.

### 6. ¿De qué otra clase (que es parte del framework Rails) hereda esa clase?
GameController tiene como clase padre a `ApplicationController`.

### 7. ¿En qué directorio está el código correspondiente a las vistas de la aplicación Sinatra (new.erb, show.erb, etc.)?
En Rails, este código estará en la carpeta `app/views`.

### 8. Los sufijos de nombre de archivo para estas vistas son diferentes en Rails que en la aplicación Sinatra. ¿Qué información proporciona el sufijo situado más a la derecha del nombre del archivo (por ejemplo: en foobar.abc.xyz, el sufijo .xyz) sobre el contenido del archivo?
El sufijo más a la derecha (.erb) indica el lenguaje de plantilla utilizado para procesar el contenido antes de renderizarlo. En el caso de .html.erb, .erb denota el uso del lenguaje de plantillas ERB y .html indica que se renderizará como HTML.

### 9. ¿Qué información te brinda el otro sufijo sobre lo que se le pide a Rails que haga con el archivo?
El sufijo anterior al .erb (como .html o .json) indica el formato en que Rails debería renderizar la salida después de procesar la plantilla. 

### 10. ¿En qué archivo está la información de la aplicación Rails que asigna rutas (por ejemplo, GET/new) a las acciones del controlador?
La información que asigna rutas a las acciones del controlador en una aplicación Rails se encuentra en el archivo `config/routes.rb`.

### 11. ¿Cuál es el papel de la opción :as => 'name' en las declaraciones de ruta de config/routes.rb?
La opción `:as => 'name'` se utiliza para nombrar una ruta. Esto permite referenciar la ruta en otras partes de la aplicación usando un nombre en lugar de la URL completa.


### 12. En la versión de Sinatra, los bloques before do...end y after do...end se utilizan para la gestión de sesiones. ¿Cuál es el equivalente más cercano en esta aplicación Rails y en qué archivo encontramos el código que lo hace?
En Rails, el equivalente a los bloques before y after de Sinatra son los filtros before_action y after_action. Estos se definen en el archivo app/controllers/game_controller.

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/bdaf9511-1665-4afc-8c16-efe7ae539c89)


### 13. Un formato de serialización popular para intercambiar datos entre aplicaciones web es JSON. ¿Por qué no funcionaría utilizar JSON en lugar de YAML?
JSON no maneja instancias de objetos Ruby o clases personalizadas tan bien como YAML. Usar JSON para ciertos objetos Ruby podría generar errores al intentar serializar o deserializar.

### 14. En la versión de Sinatra, cada acción del controlador termina con redirect o con erb. ¿Por qué no hay llamadas explícitas correspondientes a erb en la versión Rails?
En Rails, si no se especifica una respuesta explícita, Rails inferirá cuál vista renderizar basándose en el nombre de la acción del controlador y el controlador en sí. Por ejemplo, la acción show en GameController automáticamente buscará y renderizará app/views/game/show.html.erb.

### 15. En la versión de Sinatra, codificamos directamente un formulario HTML usando la etiqueta <form>. ¿Se te ocurre alguna razón por la que Rails podría introducir este "nivel de direccionamiento indirecto"?
Rails utiliza métodos como `form_tag` y `form_for` en lugar de la etiqueta <form> directa para mejorar la seguridad mediante tokens anti-CSRF, facilitar la vinculación con modelos, simplificando así la recopilación y validación de datos del formulario. Además, ayuda a mantener un código más ordenado y reutilizable.

### 16. ¿Cómo se manejan los elementos del formulario, como campos de texto y botones, en Rails?
En Rails, elementos individuales del formulario como campos de texto y botones se gestionan mediante "helpers" específicos como text_field, submit, check_box, etc. Estos "helpers" generan el HTML adecuado y simplifican la manipulación de datos.

### 17. En la versión de Sinatra, las vistas de show, win y lose reutilizan el código en la vista new. ¿Qué mecanismo de Rails permite reutilizar esas vistas en la versión de Rails?
Rails ofrece `partials`, que son fragmentos de vistas que se pueden reutilizar en diferentes vistas. Los "partials" se invocan con el método render.

![image](https://github.com/Daniel349167/ExamenParcial-CC3S2/assets/62466867/49604ac3-b7eb-4c53-8969-06c9804792a3)

### 18. ¿Por qué no se modificaron los escenarios de Cucumber y las definiciones de pasos para que funcionen igualmente con Sinatra y Rails?
Los escenarios de Cucumber y las definiciones de pasos se escriben en lenguaje Gherkin y Ruby, respectivamente. Por tanto, aunque se cambie el framework de Ruby, el código será el mismo siempre y cuando la funcionalidad y la interfaz de usuario o puntos finales de API se mantengan consistentes entre las diferentes versiones de la aplicación. Además, es importante señalar que los escenarios en lenguaje Gherkin son válidos para cualquier aplicación backend, no solo para los frameworks basados en Ruby.

