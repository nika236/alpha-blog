Rails.application.routes.draw do
  resources :articles, only: [:show, :index, :new, :create]
  root 'homes#index'
  get 'about', to: 'homes#about'
end
