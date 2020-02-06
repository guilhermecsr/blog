Rails.application.routes.draw do
  # localhost:3000/welcome/index
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  # localhost:3000
  resources :articles

  root 'home#index'
end
