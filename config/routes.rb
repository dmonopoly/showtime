Showtime::Application.routes.draw do
  get "movies/index"

  get "movies/new"

  resources :movies, :only => [:index, :new, :create]
  resources :genres, :only => [:index, :show]

  root :to => "movies#index"
end

