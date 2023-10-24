Rails.application.routes.draw do
  root 'homes#home'
  get 'about', to: 'homes#about'
end
