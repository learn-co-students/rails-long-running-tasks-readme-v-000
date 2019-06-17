Rails.application.routes.draw do
  resources :customers, only: [:index]
  post 'costumers/upload', to: 'costumers#upload'
end
