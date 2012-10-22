Maplight::Application.routes.draw do

  match '/search/results' => 'search#results', :as => :results
  match '/search' => 'search#index'
  root :to => 'search#index'

end
