TheSmallCode::Application.routes.draw do

  root :to => 'page#index'
  
  resources :images
  resources :comments
  resources :authors
  resources :posts
  resources :tasks
  #esta es la forma de hacer la ruta
  #cuando hay un modelo anidado dentro
  #de otro en un documento mongoid
  #resources :posts do
  #  resources :comments
  #end
end
