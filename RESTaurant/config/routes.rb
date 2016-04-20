Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :servers, only: [:new, :create]
  resources :menu_items
  resources :orders
  resources :customers

  get '/servers/log_in'   => "servers#log_in", as: :log_in

  post '/sessions'        => "sessions#create", as: :creation
  delete '/sessions'      => "sessions#destroy", as: :deletion
  get '/servers/profile'  => "servers#profile", as: :profile



  # get '/customers'          => "customers#index"
  # get '/customers/new'      => "customers#new"
  # get '/customers/:id'      => "customers#show"
  #
  # get '/customers/:id/edit' => "customers#edit", as: :edit_customer
  # patch '/customers/:id'    => "customers#update", as: :customer
  #
  # post '/customers'         => "customers#create", as: :create_customer
  # delete '/customers/:id'   => "customers#destroy", as: :delete
  #
  #
  # get '/menu_items'          => "menu_items#index"
  # get '/menu_items/new'      => "menu_items#new"
  # get '/menu_items/:id'      => "menu_items#show"
  #
  # get '/menu_items/:id/edit' => "menu_items#edit", as: :edit_menu_item
  # patch '/menu_items/:id'    => "menu_items#update", as: :menu_item
  #
  # post '/menu_items'         => "menu_items#create", as: :create_menu_item
  # delete '/menu_items/:id'   => "menu_items#destroy", as: :delete
  #
  #
  get '/orders'          => "orders#index"
  get '/orders/new'      => "orders#new"
  get '/orders/:id'      => "orders#show"

  # get '/orders/:id/edit' => "orders#edit", as: :edit_order
  # patch '/orders/:id'    => "orders#update", as: :order

  post '/orders'         => "orders#create", as: :create_order
  delete '/orders/:id'   => "orders#destroy", as: :delete

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
