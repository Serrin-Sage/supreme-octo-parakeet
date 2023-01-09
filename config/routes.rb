Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/episodes', to: 'episodes#index'
  get '/episodes/:id', to: 'episodes#show'
  delete '/episodes/:id', to: 'episodes#destroy'

  get '/guests', to: 'guests#index'

  # get '/appearances', to: 'appearances#index'
  get '/appearances/:id', to: 'appearances#show'
  post '/appearances', to: 'appearances#create'
end
