Rails.application.routes.draw do

  root 'pintures#home'

  get 'signup' => 'users#new', as: :sign_up
  post 'signup' => 'users#create', as: :users

  get 'user/show' => 'users#show', as: :user

  get 'signin' => 'sessions#new', as: :sign_in
  post 'signin' => 'sessions#create', as: :auth

  get 'signout' => 'sessions#delete', as: :sign_out

  get 'new_pinture' => 'pintures#new', as: :new_pinture
  post 'create_pinture' => 'pintures#create', as: :pintures

  get 'pinture' => 'pintures#show', as: :pinture_modal

end
