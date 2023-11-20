Rails.application.routes.draw do
  resources :articles
  resources :users, except: [:new, :create]
  root 'homes#home'
  get 'about', to: 'homes#about'
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
