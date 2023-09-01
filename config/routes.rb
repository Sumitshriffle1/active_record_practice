Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'download',to: 'theators#download'
  resource :theators ,only: [:create,:show]
  resources :messages ,only: [:index,:create,:show,:destroy]

end
