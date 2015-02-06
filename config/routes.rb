Blogger::Application.routes.draw do
  resources :articles do
    resources :comments
    resources :tags
  end
  root to: "articles#index"
  resources :tags do
    resources :articles
  end
end
