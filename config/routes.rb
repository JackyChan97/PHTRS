Rails.application.routes.draw do
  get 'picture/show'
  match '/picture', to: 'picture#show', via: 'get'
  resources :potholes
  post 'picture/mystore'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
