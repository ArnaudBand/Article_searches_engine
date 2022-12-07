Rails.application.routes.draw do
  resources :articles do
    resources :counter_articles, only: %i[ create ]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "counter_articles/search", to: "articles#search"

  root "articles#index"
end
