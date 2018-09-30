Rails.application.routes.draw do
  root to: 'skills_users#home'
  resources :skills_users
  resources :skills
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
