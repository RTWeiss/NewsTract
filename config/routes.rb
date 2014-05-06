NewsTract::Application.routes.draw do

  resources :articles, :subscriptions, :topics

  devise_for :users

  root 'articles#index'

end
