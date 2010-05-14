ActionController::Routing::Routes.draw do |map|
  map.resources :vehicle_types

  map.resources :parks
  
  map.resources :users

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
