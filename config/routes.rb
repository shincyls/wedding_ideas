Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static#index'

  #devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}  

  #devise_for :users

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }

  resources :dresses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
