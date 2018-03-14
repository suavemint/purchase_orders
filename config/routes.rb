Rails.application.routes.draw do
  root 'welcome#index'
  get 'signup', to: 'organizations#new'

  resources :individuals
  resources :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
