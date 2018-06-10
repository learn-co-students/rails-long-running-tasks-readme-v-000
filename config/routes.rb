Rails.application.routes.draw do
  resources :customers, only: [:index]
  post 'customer/upload' => 'customers#upload'
end
