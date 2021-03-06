Rails.application.routes.draw do
  get 'stocks/search'

  get 'users/my_portfolio'

  get 'user/my_portfolio'

  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
