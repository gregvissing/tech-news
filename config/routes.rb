Rails.application.routes.draw do
   resources :users, only: [:index, :show]
   
   resources :bytes, only: [:new, :create, :show]
   
end
