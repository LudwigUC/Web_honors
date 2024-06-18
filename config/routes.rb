Rails.application.routes.draw do
  resources :contenidos
  resources :ramos

  get 'contenidos/index'
  get 'contenidos/show'
  get 'contenidos/new'
  get 'contenidos/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "ramos#home"

  post "ramos/create", to: "ramos#create"
  get '/add_content', to: 'contenidos#add_content'
  post '/add_content', to: 'contenidos#create'
  patch '/add_content', to: 'contenidos#create'
  delete '/add_content', to: 'contenidos#delete'
  post '/crear_planner', to: 'contenidos#terminar'
  patch '/crear_planner', to: 'contenidos#terminar'
  get '/show_planner', to: 'index#planner'
end
