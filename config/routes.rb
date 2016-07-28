Rails.application.routes.draw do
  get 'session/new'

  root 'static_pages#home'

  # static pages routes, not connected to models
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
#  get '/signup', to 'static_pages#new'

  # dynamic routes
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # restful routes
  resources :users, except: [ :new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
