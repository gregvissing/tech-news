Rails.application.routes.draw do
   resources :users, only: [:index, :show]
   
   resources :bytes, only: [:new, :create, :show]
   
   # sign in session routes
   get '/login', to: 'sessions#new', as: 'login'
   post '/sessions', to: 'sessions#create', as: 'sessions'
end
