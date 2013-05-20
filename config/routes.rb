SouthTexasJazzFoundation::Application.routes.draw do
  resources :biographies
  get '/band_members' => 'biographies#index', :as => 'band_members'
  get '/band_members/:id' => 'biographies#show', :as => 'band_member'

  devise_for :members

  root :to => 'home#index'
  get "home/index"

end
