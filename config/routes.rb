Rails.application.routes.draw do
  devise_for :users
  resources :portfolios
  get 'angular-items', to: 'portfolios#angular'
  get 'aboutme', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
     get :toggle_status
    end
  end

  root to: 'pages#home'
end
