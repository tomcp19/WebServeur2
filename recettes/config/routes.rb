Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Tommy Landry - derniere modif 4/11/2020
  
  root 'accueil#presentation' # pour la route /

  get 'recettes/:id', to: 'recettes#recette'

  namespace :admin do
    get '/', to: 'users#index'
    get '/recettes/', to: 'users#recettes'
    get '/recettes/:id', to: 'users#recettedetail'
  end



end
