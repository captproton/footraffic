ActionController::Routing::Routes.draw do |map|
  map.resources :businesses

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.foursquare '/foursquare', :controller => 'foursquare', :action => 'index'
  map.resources :users

  map.resource :session

  map.root :controller => "businesses"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
