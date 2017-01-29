Rails.application.routes.draw do
  get 'abonents/index'

  get 'abonents/show'

  get 'abonents/view'

  get 'abonents/edit'

  get 'abonents/new'

  get 'abonents/create'

  get 'abonents/update'

  get 'abonents/destroy'

  get 'books/index'

  get 'books/show'

  get 'books/view'

  get 'books/edit'

  get 'books/new'

  get 'books/create'

  get 'books/update'

  get 'books/destroy'

  get 'deliveries/index'

  get 'deliveries/show'

  get 'deliveries/view'

  get 'deliveries/edit'

  get 'deliveries/new'

  get 'deliveries/create'

  get 'deliveries/update'

  get 'deliveries/destroy'

  get 'employees/index'

  get 'employees/show'

  get 'employees/view'

  get 'employees/edit'

  get 'employees/new'

  get 'employees/create'

  get 'employees/update'

  get 'employees/destroy'

  get 'libraries/index'

  get 'libraries/view'

  get 'libraries/edit'

  get 'libraries/new'

  get 'libraries/create'

  get 'libraries/update'

  get 'libraries/destroy'

  get 'library/view'

  resources :deliveries
  resources :abonents
  resources :books
  resources :employees
  resources :libraries

  get 'admin/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'admin#index', as: 'admin'

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
