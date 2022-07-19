Rails.application.routes.draw do
  root 'sessions#create'

  post '/login' => 'sessions#create'

  get '/companies' => 'companies#index'
end
