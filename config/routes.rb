Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  get 'score/:id', to: 'articles#score', as: 'score_article'
  root to: 'articles#index'
end
