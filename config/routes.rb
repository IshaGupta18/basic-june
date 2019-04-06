Rails.application.routes.draw do
  get 'users/:id/edit', to: 'users#edit'
  patch 'users/:id',to: 'users#update',as: :user
  get 'users', to:'users#index'
  get 'users/new', to:'users#new'
  post 'users', to:'users#create'
  get 'posts', to:'posts#index'
  delete 'users/:id', to: 'users#destroy'
  get 'users/sign_in', to: 'users#sign_in'
  post 'users/create_session', to: 'users#create_session'
  get 'users/sign_out', to: 'users#sign_out'
  #patch 'users/:email',to: 'users#updatelink',as: :user



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
