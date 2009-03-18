ActionController::Routing::Routes.draw do |map|

  map.root :controller => 'simple', :action => 'services'
  map.connect '/:action', :controller => 'simple'

  map.connect ':controller/:action'
  map.connect ':controller/:action/:id.:format'
end
