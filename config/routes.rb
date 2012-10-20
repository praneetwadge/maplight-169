Maplight::Application.routes.draw do
  #get "search/index"
	match '/search/results/:query' => 'search#results', :as => :results
	match '/search' => 'search#index'
  root :to => 'search#index'
end
