Expenses::Application.routes.draw do

  get 'home/index'
  root :to => 'home#index'

  match "home/data", :to => "home#data", :as => "home_data", :via => "get"
  match "home/db_action", :to => "home#db_action", :as => "home_db_action", :via => "post"

  get "calendar/index"
  match "calendar/data", :to => "calendar#data", :as => "calendar_data", :via => 'get'
  match "calendar/db_action", :to => "calendar#db_action", :as => "calendar_ddb_action", :via => 'get'

  get "orderer/index"
  match "orderer/data", :to => "orderer#data", :as => "orderer_data", :via => 'get'
  match "orderer/db_action", :to => "orderer#db_action", :as => "orderer_ddb_action", :via => 'get'

  get "agreement/index"
  match "agreement/data", :to => "agreement#data", :as => "agreement_data", :via => 'get'
  match "agreement/db_action", :to => "agreement#db_action", :as => "agreement_ddb_action", :via => 'get'

  get "work/index"
  match "work/data", :to => "work#data", :as => "work_data", :via => 'get'
  match "work/db_action", :to => "work#db_action", :as => "work_ddb_action", :via => 'get'

  get "staff/index"
  match "staff/data", :to => "staff#data", :as => "staff_data", :via => 'get'
  match "staff/db_action", :to => "staff#db_action", :as => "staff_ddb_action", :via => 'get'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
