Rails.application.routes.draw do
  root to: 'timememos#index'

  resources :timememos
end
