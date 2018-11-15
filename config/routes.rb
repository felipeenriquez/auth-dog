Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/team'
  get 'pages/about'

  get '/', to: 'dogs#index'
  
  get '/signup', to: 'dogs#new'
  post '/signup', to: 'dogs#create'
 
  get  '/login', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
