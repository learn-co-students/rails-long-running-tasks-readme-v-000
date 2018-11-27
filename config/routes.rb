Rails.application.routes.draw do
  resources :customers, only: [:index]
  'customers/upload', to: 'customers#upload'
end
