# README
Basics of Ruby on Rails

Follow these routes

  get 'users', to:'users#index',
  get 'users/new', to:'users#new',
  get 'posts', to:'posts#index',
  get 'users/sign_in', to: 'users#sign_in',
  get 'users/sign_out', to: 'users#sign_out',
  root :to => 'users#new'
