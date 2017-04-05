Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "conversations#index"

  devise_for :users, controllers: { registrations: 'registrations' }

  devise_scope :user do
    get '/login' => 'devise/sessions#new', as: 'login'
    get '/logout' => 'devise/sessions#destroy', as: 'logout'
  end

  resources :conversations do
    resources :messages
  end
end
