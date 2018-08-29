Rails.application.routes.draw do

  root 'static#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }

  resources :dresses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
