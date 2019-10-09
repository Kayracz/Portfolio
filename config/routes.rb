Rails.application.routes.draw do
resources :topics, only: [:index, :show]
  get 'topics/index'
  get 'topics/show'
  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end

  get 'angular-items', to: 'portfolios#angular'
  get 'aboutme', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'blog/:id', to: 'blogs#show', as: 'blog_show'
  get 'tech-news', to: 'pages#tech_news'

  resources :blogs do
    member do
     get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'

  root to: 'pages#home'
end
