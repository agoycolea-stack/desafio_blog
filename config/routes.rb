Rails.application.routes.draw do
  get 'posts/new'
  post 'posts/create'
  get 'posts/index'
  root 'posts#index'
  get 'posts/dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
