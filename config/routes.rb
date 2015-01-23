Rails.application.routes.draw do
  
  resources :opens

    # root page
  root             'home#map'
  
  
  # # /about
  # get 'about'   => 'home#about'
 
end
