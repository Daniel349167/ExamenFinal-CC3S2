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


