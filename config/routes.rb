Rails.application.routes.draw do
  resources :polls

  root 'polls#flow'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end