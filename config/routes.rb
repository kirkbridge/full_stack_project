Rails.application.routes.draw do
  get 'signup', to: 'users#new'

  get '/about_us', to: 'static_page#about_us'

  get '/contact_us', to: 'static_page#contact_us'

  get 'product/index', to: 'product#index'

  root 'product#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
