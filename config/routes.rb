Rails.application.routes.draw do
  # mechanics
  get '/mechanics', to: 'mechanics#index'
  get '/amusementpark/:id', to: 'amusementpark#show'
  get '/mechanic/:id', to: 'mechanic#show'
end
