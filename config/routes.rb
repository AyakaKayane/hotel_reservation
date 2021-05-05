Rails.application.routes.draw do

  get 'travel/search' => 'travel#search'
  get 'travel/search' => 'travel#keyword'
  get 'travel/toparea' => 'travel#show'

  get 'reservations/index'
  post 'reservations/new' => 'reservations#new'
  post 'reservations/show' => 'reservations#create'
  post 'reservations/create' => 'reservations#create'
  get 'reservations/:id/show' => 'reservations#show'


  get 'rooms/index'
  get 'rooms/new' => 'rooms#new'
  get 'rooms/show' ,to: 'rooms#create'
  get 'rooms/show/:id' => 'rooms#show'
  post 'rooms/create' => 'rooms#create'
  
  

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post 'users/create' => 'users#create'

  get 'sessions/new'

  get 'users/index'
  get "travel/index" => "travel#index"
  get 'users/new' ,to: 'users#new'
  get 'users/show' ,to: 'users#create'
  get "users/:id" => "users#show"
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :travel
  resources :users
  resources :rooms
  resources :reservations
end
