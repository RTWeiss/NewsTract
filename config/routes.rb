NewsTract::Application.routes.draw do

  devise_for :users

  root 'articles#index'

end
