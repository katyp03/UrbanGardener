Rails.application.routes.draw do

  resources :posts

  resources :plants
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static#home"
  get '/search' => 'search#index'
  # for the search function on the search page
  post '/search' => 'search#index'
  # gives users a customized paged based on username and also sets a profile_path
  get '/:username' => 'static#profile', as: :profile
end
