Rails.application.routes.draw do
  # get "articles/index"
  # get "articles/new"
  # get "articles/edit"
  # get "articles/update"
  # get "articles/show"
  root "articles#index"
  resources :articles do
    resources :comments, only: [:create, :destroy]
  end
end
