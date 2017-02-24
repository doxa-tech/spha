Rails.application.routes.draw do
  root to: 'pages#home'

  get '/deploy', to: 'pages#deploy'
  get '/previews/romont', to: 'previews#romont'

  post '/deploys/deploy', to: 'deploys#deploy'
  post '/previews/preview', to: 'previews#preview'

  mount Adeia::Engine => "/adeia"

end
