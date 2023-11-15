Rails.application.routes.draw do
  resources :articles
  resources :users, except: [:new]
  root 'homes#home'
  get 'about', to: 'homes#about'
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
end
