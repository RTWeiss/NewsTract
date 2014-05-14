NewsTract::Application.routes.draw do

  resources :subscriptions, :topics

  resources :articles do
    get 'search', on: :collection #Means do not expect an id parameter. Add a new method called search on a collection of articles
  end

  #Added so that we can route the user to the topics page after signing in
  devise_for :users, :controllers => { :registrations => "registrations" }

  #Root is the sign up page
  root 'sites#index'

  get '/sites/about', to: 'sites#about'
  get '/sites/faq', to: 'sites#faq'
  # get '/search', to: 'articles#search'

end