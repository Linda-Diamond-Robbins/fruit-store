Rails.application.routes.draw do
  get '/fruits' => 'fruits#index'
  get '/fruits/new' => 'fruits#new'
  post '/fruits' => 'fruits#create”'
  get '/fruits/:id' => 'fruits#show'
  get '/fruits/:id/edit' => 'fruits#edit'
  patch '/fruits/:id' => 'fruits#update'
  delete '/fruits/:id' => 'fruits#destroy'
end


