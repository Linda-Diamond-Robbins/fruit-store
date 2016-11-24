Rails.application.routes.draw do
  get '/fruits' => 'fruits#index'
  get '/fruits/new' => 'fruits#new'
  post '/fruits' => 'fruits#create'
  get '/fruits/:id' => 'fruits#show'
  get '/fruits/:id/edit' => 'fruits#edit'
  patch '/fruits/:id' => 'fruits#update'
  delete '/fruits/:id' => 'fruits#destroy'

  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'
  get '/suppliers/:id' => 'suppliers#show'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers:id' => 'suppliers#update'
  delete '/suppliers:id' => 'suppliers#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end


