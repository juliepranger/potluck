Potluck::Application.routes.draw do
  root to: 'parties#home'

  resources :users #consolidating what has been commented out 
  resources :parties

  # get 'parties' => 'parties#index'
  # get 'parties/new' => 'parties#new' # form to add newbies MUST BE before SHOW
  # get 'parties/:id' => 'parties#show'

  # post 'parties' => 'parties#create' #creating new party

  # delete 'parties/:id' => 'parties#destroy'

  # get 'users' => 'users#show'
  # get 'users/new' => 'users#new' 
  # get 'users/:id' => 'users#show'

  # post 'users' => 'users#create' #creating new user
  # post 'users/:id' => 'users#show' #redirect to this after user logs in

  post 'authentications' => 'authentications#create' 
  get 'authentications/new' => 'authentications#new'

  #delete 'authentications/ => 'authentications#destroy'
  get "/logout", to: "authentications#destroy", as: "logout"

  #dashboard options
  get 'dashboards' => 'dashboards#home'
  get 'dashboards/new' => 'dashboards#new'
  # get 'dashboards/:id' => 'dashboards#show' #redirect to this dashboard after user logs in

  post 'dashboards' => 'dashboards#create' #creating new dashboard

  #need to make a delete for dashboard when a user deletes their account
end
 