resources :customers, only: [:index]
post 'customers/upload', to: 'customers#upload'
