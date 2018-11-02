Rails.application.routes.draw do
  devise_for :users
  resources :gossip do
    resources :comments
  end
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  root to: 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
