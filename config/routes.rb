Rails.application.routes.draw do
  resources :articles
  root 'homes#home'
  get 'about', to: 'homes#about'
end
