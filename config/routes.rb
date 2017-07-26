Rails.application.routes.draw do
  get 'users/show'

  resources :plants
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static#home"
end
