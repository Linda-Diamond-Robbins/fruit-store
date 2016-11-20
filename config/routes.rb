Rails.application.routes.draw do
  get '/fruits' => 'fruits#index'
  get '/fruits/:id' => 'fruits#show'
end
