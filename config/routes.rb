ActionController::Routing::Routes.draw do |map|
  map.resources :post_categories

  map.resources :tickets

  map.resources :messages

  map.resources :posts

  map.resources :event_categories

  map.resources :events

  map.resources :retailer_categories

  map.resources :retailers, :collection => {:list => :get}

  map.resources :pages
  
  map.resource :user_session
  map.resources :users
  
  map.retailers '/jalleenmyyjat', :controller => 'retailers', :action => 'list'
  map.events '/tapahtumat', :controller => 'events', :action => 'list'
  map.hotnews '/uutiset', :controller => 'posts', :action => 'hotnews'
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'
  map.view_page ':page_url', :controller => 'viewer', :action => 'show'
  
  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'
  map.root :controller => 'viewer', :action => 'show', :page_url => 'kuluttaja'
  
end
