Rails.application.routes.draw do
  resources :open_positions_lists
  
  match 'shortlist_editor', to: 'open_positions_lists#shortlist_editor', via: [:put, :post, :update, :patch]
  
  # resources :open_positions_lists do
  #   collection do
  #     put :shortlist_editor
  #   end
  # end
  
  # put 'shortlist_editor' => "open_positions_lists#shortlist_editor"
  
  get 'static_pages/shortlist'

  get 'static_pages/about'
  
  mount RailsDb::Engine => '/rails/db', :as => 'opl_db'
  
  # get 'open_positions_lists#csv'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "static_pages#shortlist"

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
