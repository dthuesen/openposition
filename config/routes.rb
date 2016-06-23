Rails.application.routes.draw do
  root "shortlist#index"

  resources :open_positions_lists
  resources :shortlist
  
  # get 'static_pages/shortlist'

  get 'static_pages/about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # root "shortlist#index"

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
