ActionController::Routing::Routes.draw do |map|


  ['services', 'jobs', 'opensource', 'research'].each do |action|
    map.connect "/:locale/#{action}", :controller => 'simple', :action => action, :locale => 'en'
  end

  map.root :controller => 'simple', :action => 'index'
end
