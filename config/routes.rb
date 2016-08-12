Rails.application.routes.draw do
  get 'home/index'

  resources :teams
  resources :results
  resources :participants
  resources :weigh_ins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
