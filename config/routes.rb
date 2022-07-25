Rails.application.routes.draw do
  resources :memberships, only: [:index, :create]
  resources :clients, only: [:index, :show]
  resources :gyms, only: [:index, :show, :destroy]

  # Create a new membership
    # Part 1 of 2 DONE
  
  # View one specific gym
    # COMPLETE
 
  # Delete a gym
    # COMPLETE
 
  # View one specific client
    # COMPLETE

end
