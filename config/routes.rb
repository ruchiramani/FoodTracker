Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#homepage'
  resources :users
  resources :recipes
  resources :day_recipes
  resources :ingredients
  resources :recipe_ingredients

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
