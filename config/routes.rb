Rails.application.routes.draw do
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'welcome/index'
  #get '/inicio', to: 'welcome#index'

  # resources :players
  get '/partner', to: 'partner#index'
  get '/partner/find', to: 'partner#show'

 


  root to: 'welcome#index'
end
