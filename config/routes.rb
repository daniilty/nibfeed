Rails.application.routes.draw do
  get 'adlog', to: 'admlog#log'
  delete 'logout', to: 'admlog#destroy'
  post 'adlog', to: 'admlog#dosome'
  root 'posts#index'
  get 'create_post', to: 'posts#create'
  post 'create_post', to: 'posts#new'
  delete 'delete/:id', to: 'posts#delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
