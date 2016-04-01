Rails.application.routes.draw do
  resources :open_positions_lists
  
  match 'edit_multiple', to: 'open_positions_lists#edit_multiple', via: [:get]
  match 'update_multiple', to: 'open_positions_lists#update_multiple', via: [:put]
  
  # resources :open_positions_lists do
  #   collection do
  #     get :edit_multiple
  #     put :update_multiple
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
