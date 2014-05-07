NewsTract::Application.routes.draw do

  resources :articles, :subscriptions, :topics

  #Added so that we can route the user to the topics page after signing in
  devise_for :users, :controllers => { :registrations => "registrations" }

  #Root is the sign up page
  root 'sites#index'

end
