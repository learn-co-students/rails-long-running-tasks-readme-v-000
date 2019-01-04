Rails.application.routes.draw do
  resources :customers, only: %i[index]
  post 'customers/upload', to: 'customers#upload'
end
