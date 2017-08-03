Rails.application.routes.draw do
  resources :customers, only: [:index]
  post 'customers/up;oad', to: 'customers#upload'
end
