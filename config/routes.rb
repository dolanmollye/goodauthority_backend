Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
  resources :users, only: [:create, :index, :update]
  
  post '/login', to: 'auth#create'
  post '/create-account', to: 'users#create'
  
  get '/profile', to: 'users#profile'
  
    end
  end
  resources :posts, only: [:create, :index, :update]
  post '/new-post', to: 'posts#create'
  resources :likes, only: [:create, :index]
end
