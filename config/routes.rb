Rails.application.routes.draw do
  resources :users
  namespace :admin do
    root to: 'home#index'
    get 'home/index'
    get 'topics/index'
    get 'users/index'
  end

  root to: 'home#index'
  
  get 'home/index'

  get 'topics/index'
  get 'topics/new'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  post 'topics/create' => 'topics#create'
  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete
  
  post 'posts/create' => 'post#create', as: :post_create
  delete 'posts/delete/:id' => 'post#delete', as: :post_delete

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
