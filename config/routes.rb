

Rails.application.routes.draw do
  root 'articles#index'
  resources :analytics, only: [:index]
  resources :articles, only: %i[index create new destroy]
end
