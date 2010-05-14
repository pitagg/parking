ActionController::Routing::Routes.draw do |map|
  map.resources :parks

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  map.resources :users
end
