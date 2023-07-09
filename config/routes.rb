Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get '/help', to: 'home#help'
  
  resources :users
  
  resources :books do
    resources :comments
  end
end
