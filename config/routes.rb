Rails.application.routes.draw do
  resources :user_stocks, only: %i[create destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'friends', to: 'users#friends'
end
