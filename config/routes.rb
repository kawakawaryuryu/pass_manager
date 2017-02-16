Rails.application.routes.draw do
  get 'manager/index'

  resources :passes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
