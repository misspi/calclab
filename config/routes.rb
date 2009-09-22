ActionController::Routing::Routes.draw do |map|
  Calclab.actions do |action|
    map.connect "/:locale/#{action}", :controller => 'simple', :action => action, :locale => 'en'
  end

  map.root :controller => 'simple', :action => 'index'
end
