Rails.application.routes.draw do
  resources :weight_histories, except:[:destroy, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/', to:'top#index'
  # Defines the root path route ("/")
  # root "articles#index"

  # /users/1
  # /users/2
  get '/users', to: 'users#index', as: "users"
  get '/users/:id', to: 'users#show', as: "user"
end
