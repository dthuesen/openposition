Rails.application.routes.draw do
  resources :open_positions_lists
  get 'static_pages/shortlist'

  get 'static_pages/about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "static_pages#shortlist"

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
