Rails.application.routes.draw do

  resources :comments
  resources :posts

  resources :plants
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static#home"
  get '/search' => 'search#index'
  # for the search function on the search page
  post '/search' => 'search#index'
  get '/feed' => 'static#feed'
  post '/plants/:id/add' => 'plants#add', as: :plant_add
  post '/plants/:id/remove' => 'plants#remove', as: :plant_remove
  post '/recipe/add' => 'recipe#add', as: :recipe_add
  post '/recipe/:id/remove' => 'recipe#remove', as: :recipe_remove
  get '/feed' => 'static#feed'
  # gives users a customized paged based on username and also sets a profile_path
  get '/:username(/:page)' => 'static#profile', as: :profile

end
