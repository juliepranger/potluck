Potluck::Application.routes.draw do
  root to: 'parties#home'

  get 'parties' => 'parties#index'
  get 'parties/new' => 'parties#new' # form to add newbies MUST BE before SHOW
  get 'parties/:id' => 'parties#show'

  post 'parties' => 'parties#create' #creating new party

  delete 'parties/:id' => 'parties#destroy'

  get 'users' => 'users#home'
  get 'users/new' => 'users#new' 
  get 'users/:id' => 'users#show'

  post 'users' => 'users#create' #creating new user
  post 'users/:id' => 'users#show' #redirect to this after user logs in

  post 'authentications' => 'authentications#create' 
  get 'authentications/new' => 'authentications#new'

  #delete 'authentications/ => 'authentications#destroy'
  post "/logout", to: "authentications#destroy", as: "logout"

end
 