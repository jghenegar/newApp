Rails.application.routes.draw do
  root "articles#index"
  #resources :articles, to: "articles#index"
  resources :articles do
    resources :comments
  end
  #get "/articles:id", to: "articles#show"
  mount Avo::Engine, at: Avo.configuration.root_path
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
