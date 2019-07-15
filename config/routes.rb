Rails.application.routes.draw do
  resources :users
  namespace :admin do
    root to: 'home#index'
    get 'home/index'
    get 'contests/index'
    get 'users/index'
  end

  root to: 'home#index'

  get 'home/index'

  get 'mypage/index'

  get 'contests/index'
  get 'contests/new'
  get 'contests/show/:id' => 'contests#show', as: :contests_show
  post 'contests/create' => 'contests#create'
  delete 'contests/delete/:id' => 'contests#delete', as: :contest_delete

  post 'posts/create' => 'post#create', as: :post_create
  delete 'posts/delete/:id' => 'post#delete', as: :post_delete

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
