Rails.application.routes.draw do
  resources :users

  get 'sessions' => 'sessions#create', as: :create

  get 'sessions/destroy'

  root 'pages#home'

  get 'login' => 'sessions#new'

  get 'logout' => 'sessions#destroy'
  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact
  get 'register' => 'users#new', as: :register
  resources :sessions, only: [:new, :create, :destroy]
end

