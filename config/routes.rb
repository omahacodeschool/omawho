Rails.application.routes.draw do
  root "users#index"

  get '/page/:number' => 'users#page'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get '/category/:category_name' => 'categories#show', as: 'category'


  get '/:username' => "users#show", as: 'user'
  get '/:username/edit' => "users#edit", as: 'edit_user'
  post '/:username' => "users#update"

  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'

  get '/:username/delete' => 'users#request_destroy', as: 'delete_user'
  post '/:username/delete' => 'users#destroy'

  get '/login' => 'users#login', as: 'login'
  post '/login' => 'sessions#create'
  get '/:username/logout' => 'sessions#destroy', as: 'logout'

  scope path: "/users", controller: :users do
    get 'forgotpassword' => :forgot_password_form, as: 'forgot_password'
    post 'forgotpassword' => :assign_new_password
  end


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
