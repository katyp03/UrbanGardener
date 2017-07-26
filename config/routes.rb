Rails.application.routes.draw do

  resources :posts

  resources :plants
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static#home"
  get '/search' => 'search#index'
  get '/:username' => 'static#profile'
end
