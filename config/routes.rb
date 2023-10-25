Rails.application.routes.draw do
  resources :articles, only: [:show]
  root 'homes#home'
  get 'about', to: 'homes#about'
end
