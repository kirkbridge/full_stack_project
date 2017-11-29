Rails.application.routes.draw do


  get 'category/show', to:'category#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  resources :product, only: %i[index, show]

  resources :users, except: %i[index, destroy]

  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  get '/about_us', to: 'static_page#about_us'

  get '/contact_us', to: 'static_page#contact_us'


  get '/products', to: 'product#index'

  root 'product#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
