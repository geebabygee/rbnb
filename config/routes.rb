Rails.application.routes.draw do
  get 'likes/new'

  get 'likes/create'

  get 'likes/destroy'

  get 'videos/index'

  get 'videos/show'

  get 'videos/new'

  get 'videos/create'

  get 'videos/destroy'

  get 'events/index'

  get 'events/show'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
