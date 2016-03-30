Rails.application.routes.draw do
  resources :open_positions_lists
  

  
  # resources :open_positions_lists, only: [:new_short] do
  #   resources :categories, 
  #             as: 'new_short', 
  #             controller: 'open_positions_lists/new_short',
  #             only: [:new_short]
  # end
  
  get 'new_short' => "open_positions_lists#new_short", only: [:new_short]
  
  # get '/open_positions_lists/new_short', to: 'open_positions_lists#new_short'
  
  get 'static_pages/shortlist'

  get 'static_pages/about'
  

  mount RailsDb::Engine => '/rails/db', :as => 'opl_db'
  
  # get 'open_positions_lists#csv'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "static_pages#shortlist"

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
