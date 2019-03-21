Rails.application.routes.draw do
  root to: 'topics#index'
  get 'home/index'
  get 'topics/index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  post 'topics/create' => 'topics#create'
  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete
  post 'posts/create' => 'post#create', as: :post_create
  delete 'posts/delete/:id' => 'post#delete', as: :post_delete
end
