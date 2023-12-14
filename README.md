# ExamenFinal

## Parte1

### Pregunta 1

- Este error ocurre al querer hacer push a una rama que ya tiene otros cambios de otros colaboradores:

![image](https://github.com/Daniel349167/ExamenFinal-DesarrolloSoftware/assets/62466867/fc636735-12ba-4619-8511-fa502f0c189a)

- La solución es hacer pull ha sus cambios para juntarlos y haiga uniformidad en el código:

![image](https://github.com/Daniel349167/ExamenFinal-DesarrolloSoftware/assets/62466867/db774b17-bd91-48f6-9ce1-73512c1c544c)

- En este caso me salió otro error ya que ambos hicimos cambios en el mismo archivo, resolvemos el conflicto en el editor:

![image](https://github.com/Daniel349167/ExamenFinal-DesarrolloSoftware/assets/62466867/209d4be1-af4a-4a42-ba9d-cbba7885c51f)

- guardamos nuevamente el commit y ya estarían nuestras ramas sincronizadas:

![image](https://github.com/Daniel349167/ExamenFinal-DesarrolloSoftware/assets/62466867/a3b30dc6-4b3e-4d64-a98c-dcfa9a5344b6)

- Por último hacemos push:

![image](https://github.com/Daniel349167/ExamenFinal-DesarrolloSoftware/assets/62466867/2ad94503-da9f-4883-9461-befc9716218e)

- Se realizo el push con exito.

### Pregunta 5
#### Se usa eval cuando:
- Necesitas ejecutar código que se construye o modifica en tiempo de ejecución y cuya estructura no se conoce de antemano
- En entornos controlados y para prototipos rápidos donde la seguridad y el mantenimiento a largo plazo no son preocupaciones principales
#### Se usa bloques cuando:
- Cuando necesitas flexibilidad en la generación de código pero también quieres mantener un alto grado de seguridad y prevenir la ejecución de código arbitrario.
- En proyectos a largo plazo donde la legibilidad y el mantenimiento del código son importantes.

Por tanto, si el caso involucra la ejecución de código representado como cadena de texto y que solo se conoce en tiempo de ejecución, eval sería lo recomendado en lugar de metaprogramación por bloques.


## Parte2

- Instalando las nuevas gemas:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/2c597d69-4a8c-4146-8caa-80cd19f05981)

- generando los archivos rspec:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/bf5ed174-d00b-4cd6-acba-de87cfa10784)

- configurando la base de datos:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/b2f3e961-0684-47c9-a44a-da94c6b89e61)

- ejecutando el servidor con 'rails server':

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/7df9436a-3ead-41a0-b868-3917aabcd8d1)

### Paso 1: Escribiendo una nueva vista

- Se añade un boton a la vista principal para ir a la nueva vista buscar, también se añade un boton a la nueva vista para poder regresar a la vista principal, se completa el controlador, la ruta y el form_tag para que funcione correctamente:

```ruby
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<h2>Search in TMDb</h2>

<div class="search-container">
  <%= form_tag search_tmdb_path, id: 'tmdb_form' do %>
      <label for="searchMovieName">Movie Name</label>
      <%= text_field_tag 'title', nil, class: "form-control", id: "movie_title_field", placeholder: "Manhunter" %>
      <label for="searchReleaseDateField">Release Year</label>
      <%= text_field_tag 'release_year', nil, class: "form-control", id: "movie_year_field", placeholder: "1986" %>

    <div class="form-check">
      <%= radio_button_tag 'language', 'en', false, class: "form-check-input" %>
      <label class="form-check-label" for="language_en">English Only</label>
    </div>

    <div class="form-check">
      <%= radio_button_tag 'language', 'all', true, class: "form-check-input" %>
      <label class="form-check-label" for="language_all">All Languages</label>
    </div>
    <%= submit_tag 'Search', id: 'tmdb_submit', class: 'btn btn-warning col-2' %>

  <% end %>

  <%= link_to 'Home', root_path, class: 'btn btn-primary' %>
</div>
```


![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/771995e2-9520-41f8-9589-afcd35cfd0c0)

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/69997e37-478d-4752-bf38-5da070936233)

- creando las pruebas, aún no implementadas:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/fbc86bfc-a707-4fe0-ab37-8b48a46a720d)



### Paso 2:
- Copiamos la prueba y ponemos el codigo de validación para que no salga error:
```ruby
require 'rails_helper'


if RUBY_VERSION>='2.6.0'
    if Rails.version < '5'
      class ActionController::TestResponse < ActionDispatch::TestResponse
        def recycle!
          # hack to avoid MonitorMixin double-initialize error:
          @mon_mutex_owner_object_id = nil
          @mon_mutex = nil
          initialize
        end
      end
    else
      puts "Monkeypatch for ActionController::TestResponse no longer needed"
    end
  end
  

describe MoviesController do
 describe 'searching TMDb' do
    it 'calls the model method that performs TMDb search' do
        get :search_tmdb, {:search_terms => 'hardware'}
        expect(response).to render_template('movies/search_tmdb')
    end
       
    it 'selects the Search Results template for rendering'
    it 'makes the TMDb search results available to that template'
 end
end
-  definimos la ruta:

```ruby
Rottenpotatoes::Application.routes.draw do
    resources :movies
    get '/search_tmdb', to: 'movies#search_tmdb'
    # map '/' to be a redirect to '/movies'
    root :to => redirect('/movies')
  end
```
-  No aparece en verde pero no falla la prueba:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/551798f4-1d07-42b3-a58b-12659b4397d7)

- agregando al archivo de pruebas:

```ruby
it 'calls the model method that performs TMDb search' do
 fake_results = [double('movie1'), double('movie2')]
 expect(Movie).to receive(:find_in_tmdb).with('hardware').
 and_return(fake_results)
 get :search_tmdb, {:search_terms => 'hardware'}
end
```
- agregando al modelo el método:
```ruby
def self.find_in_tmdb(search_terms)
  
end
```

- agregando al controlador la llamada al método

```ruby
def search_tmdb
      @movies = Movie.find_in_tmdb(params[:search_terms])
      render 'movies/search_tmdb'
    end
```
- la prueba pasa satisfactoriamente, ya que no hay failures:
  
![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/1c6deb77-52f0-4f34-9333-7b7150049464)

### Paso 3:
- agregamos el siguiente código al archivo de pruebas 'movies_controller_spec.rb':

```ruby
describe MoviesController do
  describe 'searching TMDb' do
    before :each do
    @fake_results = [double('movie1'), double('movie2')]
    end
    it 'calls the model method that performs TMDb search' do
    expect(Movie).to receive(:find_in_tmdb).with('hardware').
    and_return(@fake_results)
    get :search_tmdb, {:search_terms => 'hardware'}
    end
    describe 'after valid search' do
    before :each do
    allow(Movie).to receive(:find_in_tmdb).and_return(@fake_results)
    get :search_tmdb, {:search_terms => 'hardware'}
    end
    it 'selects the Search Results template for rendering' do
    expect(response).to render_template('search_tmdb')
    end
    it 'makes the TMDb search results available to that template' do
    expect(assigns(:movies)).to eq(@fake_results)
    end
    end
 end
end
```

#### 1.  ¿De qué tipo de objeto crees que @fake_results es una variable de instancia? (Dicho de otra manera, ¿cuál crees que es el valor de self dentro de un bloque de código de prueba?)

@fake_results es una variable de instancia del objeto RSpec::ExampleGroup. Cada grupo de pruebas definido por un bloque describe o context en RSpec se ejecuta en el contexto de una instancia de RSpec::ExampleGroup, que es una clase que RSpec define internamente para representar un grupo de ejemplos (pruebas)

#### 2. explica las línes 5-7, 14-17, 18-20. ¿Hacemos stubbing?

- Líneas 5-7: Se define @fake_results, que es un arreglo de dobles de prueba (objetos simulados) que se utilizarán en las expectativas para simular los resultados de una búsqueda en la base de datos de películas. Esta variable de instancia es accesible en todas las pruebas dentro del grupo 'describe'.

- Líneas 14-17: Este bloque establece la expectativa de que cuando se haga una llamada al método find_in_tmdb del modelo Movie, devolverá @fake_results. Luego, se realiza una solicitud GET al controlador, simulando una búsqueda con el término 'hardware'.

- Líneas 18-20 (it 'selects the Search Results template for rendering'): Esta prueba verifica que después de realizar la búsqueda, el controlador intenta renderizar la plantilla de vista search_tmdb. Esto se confirma utilizando el método render_template.

- El término "stubbing" se refiere al acto de reemplazar un método con una versión simplificada que devuelve un valor predeterminado. En este contexto, se está haciendo stubbing del método find_in_tmdb para que, en lugar de realizar una búsqueda real, devuelva simplemente @fake_results.

#### 3.  Especifica cuales son las construccionesde RSpec se utiliza para (a) crear un seam, (b) determinar el comportamiento de un seam.

- Un "seam" es un punto en el código donde se puede alterar el comportamiento sin modificar en sí el código. En las pruebas, se crea un seam utilizando técnicas como el stubbing o los dobles de prueba. En este caso, se crea un seam utilizando allow(Movie).to receive(:find_in_tmdb).and_return(@fake_results) para que el código del controlador llame a find_in_tmdb como si fuera un método real del modelo Movie.

- Se determina el comportamiento de un seam estableciendo expectativas sobre los dobles de prueba, como se hace con expect(Movie).to receive(:find_in_tmdb).with('hardware').
  
#### 4.  ¿Por qué suele ser preferible utilizar before(:each) en lugar de before(:all)?. Explica un caso de ejemplo

- before(:each) es generalmente preferido sobre before(:all) porque before(:each) se ejecuta antes de cada prueba, garantizando que cada prueba se ejecute con un estado limpio y sin dependencias de las ejecuciones de pruebas anteriores. before(:all), por otro lado, ejecuta el código de configuración una sola vez al comienzo de todas las pruebas en el grupo, lo que podría llevar a que las pruebas subsiguientes fallen debido a cambios en el estado compartido.

- Pasa las pruebas:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/20a1006e-e733-4055-8d09-fdadae419c72)



### Paso 4:

-obteniendo mi Api key en la plataforma:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/b286bb7b-70e8-4086-a616-50803d7c4c62)

- Probando con curl:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/cea472e7-65a5-47d3-abae-a987d683260f)

- Poniendo la misma url en el navegador:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/17072b2f-7cb9-4e9e-8403-f5c2483baa4a)

- ¿Qué expresión de Ruby devolvería el primer elemento de la lista de películas coincidentes?

```ruby
parsed_json = JSON.parse(response_body)
first_movie = parsed_json["results"].first
```
  
- ¿Qué expresión de Ruby establecería la variable overview del primer resultado de búsqueda?

```ruby
overview = first_movie["overview"]
```

- ¿Qué expresión de Ruby devolvería la fecha de lanzamiento del primer resultado de búsqueda, como un objeto Ruby Date? (Sugerencia: Rails tiene algunas extensiones convenientes para ayudar a administrar objetos de fecha y hora.

```ruby
release_date = Date.parse(first_movie["release_date"])
```

- Verdadero o falso: para poder utilizar la API de TMDb desde otro lenguaje como Java, necesitas
una librería Java equivalente a la gema ‘themoviedb-api`.

**Verdadero:** Si bien no es estrictamente necesario tener una librería específica, tener una librería que actúe como un envoltorio de la API facilita mucho la interacción con la API, ya que maneja la construcción de las solicitudes, el manejo de errores, y el análisis de las respuestas por ti.

- Verdadero o falso: para poder utilizar la API TMDb de otro lenguaje como Python, necesitas una librería de Python equivalente a la gema moviedb-api.  

**Falso:** No necesitas necesariamente una librería específica; podrías interactuar directamente con la API usando solicitudes HTTP y manejo de JSON, lo que se puede hacer con las librerías estándar en la mayoría de los lenguajes de programación.

- agregamos esta prueba en un nuevo archivo spec\models\movie_spec.rb

```ruby
describe Movie do
    describe 'searching Tmdb by keyword' do
    it 'calls Faraday gem with ... domain' do
    expect(Faraday).to receive(:get).with('https://api.themoviedb.org/3/search/movie?api_key=80bd9b4e4d174eb23d8078cff5857c49&query=Inception')

    Movie.find_in_tmdb('https://api.themoviedb.org/3/search/movie?api_key=80bd9b4e4d174eb23d8078cff5857c49&query=Inception')
    end
 end
end
```
- modificamos el método del modelo:

```ruby
def self.find_in_tmdb(string)
 Faraday.get(string)
end

```
- Las pruebas son exitosas:
  
![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/2a5e8578-8265-45b8-871e-650eb4305071)

### Paso 5:

- agregando la gema webmock:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/bd665d73-1015-42d3-a0d7-7a2cce92505d)

- Para agregar los mensajes de validación para cuando no llenan todos los campos o cuando no hay resultados de búsqueda, agregamos el siguiente código:

```ruby
def search_tmdb
      if params[:title].present?
        @movies = Movie.find_in_tmdb(search_params)
        flash.now[:warning] = "¡No movies found with given parameters!" if @movies.empty?
      else
        flash.now[:alert] = "Please fill in all required fields!"
        @movies = []
      end
    end
```

- Resultados:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/db22ff0e-f369-41f9-bf2f-422323073b74)

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/1345e679-f375-498a-8bf6-3a4bb72d9764)

- Para que los resultados de búsqueda se muestren en una tabla, agregamos el siguiente código al final del archivo search_tmdb.html.erb:

```ruby
<% if @movies.present? %>
  <h1 class="mt-4">Search Results</h1> <!-- Título de la sección -->
  <table class="table table-striped">
    <thead>
      <tr>
        <th class="text-center">Movie Title</th>
        <th class="text-center">Rating</th>
        <th class="text-center">Release Date</th>
        <th>Synopsis</th>
        <th></th> 
      </tr>
    </thead>
    <tbody>
      <% @movies.each do |movie| %>
        <tr>
          <td class="align-middle text-center"><%= movie['title'] %></td>
          <td class="align-middle text-center" style="width: 5%;"><%= movie['rating'] || 'R' %></td> 
          <td class="align-middle text-center" style="width: 15%;"><%= movie['release_date'] %></td>
          <td class="align-middle" style="width: 55%;"><%= movie['overview'] %></td>
          <td class="align-middle">
              <%= form_tag add_movie_path, method: :post, class: "form-inline" do %>
                <%= hidden_field_tag 'title', movie['title'] %>
                <%= hidden_field_tag 'release_date', movie['release_date'] %>
                <%= hidden_field_tag 'rating', movie['rating'] || 'R' %>
                <%= submit_tag 'Add Movie', class: 'btn btn-primary' %>
              <% end %>
          </td>
          
        </tr>
      <% end %>
    </tbody>
  </table>
<% end %>
```


- Resultado:

![image](https://github.com/Daniel349167/ExamenFinal-CC3S2/assets/62466867/8b4cd54e-c576-40fc-bcd7-ef5b800ce693)


