Rails.application.routes.draw do
  get 'topics/index'

  get 'topics/show/:id' => 'topics#show', as: :topics_show

  post 'topics/create' => 'topics#create'

  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
