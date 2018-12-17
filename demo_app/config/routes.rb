Rails.application.routes.draw do

get 'comment/show'

  resources :posts
  get 'home/index'

#  root :to => "home#index"
  root({:to=>"home#index"})

  match '/comment', to: 'comment#show', via: 'get'
  post 'comment/create1'
  match '/comment', to: 'comment#show', via: 'get'
  post 'comment/mystore'
 # match ':controller(/:action(/:id))(:format)'  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
