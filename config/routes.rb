Rails.application.routes.draw do
    devise_for :users
    resources :users
    resources :divisions
    resources :targets
    resources :teams
    resources :employees
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"
    scope "(:locale)", locale: /en|ar/ do
      root :to => "home#index"
    end
  

end
