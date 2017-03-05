Rails.application.routes.draw do
  root to: 'pages#home'

  get '/deploy', to: 'pages#deploy'
  get '/previews/romont', to: 'previews#romont'

  post '/deploys/deploy', to: 'deploys#deploy'
  post '/previews/preview', to: 'previews#preview'

  mount Adeia::Engine => "/adeia"

  resources :sessions, only: :create
  delete "signout", to: "sessions#destroy"
  get "signin", to: "pages#home"

  namespace :admin do
    resources :users, except: :show
  end

  scope :user do
    get "edit", to: "users#edit"
    patch "update", to: "users#update"
  end

end
