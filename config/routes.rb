Rails.application.routes.draw do

  resources :users, only: :index do
    resources :case_assignments 
  end

  resources :case_assignments, only: :create
  resources :cases
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  get '/me', to: 'users#show'
  delete '/logout', to: 'sessions#destroy'
  get 'validate', to: 'validation#validate'
end