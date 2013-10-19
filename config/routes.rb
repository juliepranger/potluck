Potluck::Application.routes.draw do
  get 'parties' => 'parties#index'
  get 'parties/:id' => 'parties#show'
end
 