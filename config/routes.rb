Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  get '/' => 'homes#index'

  resources :feeds
  resources :feedvotes
  resources :questions
  resources :answers
  resources :stories
  resources :storylikes

  resources :userpages
  resources :housepages

end
