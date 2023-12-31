Rottenpotatoes::Application.routes.draw do
    resources :movies
    get '/search_tmdb', to: 'movies#search_tmdb'
    post '/add_movie', to: 'movies#add_movie', as: 'add_movie'
    # map '/' to be a redirect to '/movies'
    root :to => redirect('/movies')
  end
  