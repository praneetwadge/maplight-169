Maplight::Application.routes.draw do
  #get "search/index"
	match '/search/all' => 'search#all', :as => :all
	match '/search' => 'search#index', :as => :index
	resources :contributions
  root :to => 'search#index'
end
