Rails.application.routes.draw do
  authenticated :user do
    root to: 'events#index', as: :authenticated_root
  end

  devise_for :users

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

  get 'events/new'

  get 'events/create'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 # devise_for :users,
 #    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :events, only: [ :index, :show, :new, :create, :edit, :update ] do
    resources :likes, only: [:create, :destroy]
    resources :videos, only:  [ :index, :show, :new, :create, :destroy]
    resources :user_videos, only: [ :index, :new, :create, :destroy]
  end

end
