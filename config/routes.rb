ActionController::Routing::Routes.draw do |map|
  map.resources :parking_spaces

  map.resources :vehicle_types

  map.resources :parks
  
  map.resources :users

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  map.resources :visual_patterns, :only => [:index]
  
  map.root :controller => :parks
end
