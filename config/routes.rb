Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root "users#index"

  get '/admin/email'

  get '/page/:page' => 'users#page'

  resources :password_resets
  get 'password_resets/create'
  get 'password_resets/edit'
  get 'password_resets/update'

  get '/category/:id' => 'categories#show', as: 'category'
  get '/category/:id/page/:page' => 'categories#show'

  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create', as: 'user_session'
  get '/logout' => 'sessions#destroy', as: 'logout'

  scope path: "/users", controller: :users do
    post '/' => 'users#create'
    get 'new' => 'users#new', as: 'new_user'
    get 'forgotpassword' => :forgot_password_form, as: 'forgot_password'
  end

  get '/:username' => "users#show", as: 'user'
  post '/:username' => "users#update"
  get '/:username/edit' => "users#edit", as: 'edit_user'
  get '/:username/delete' => 'users#request_destroy', as: 'delete_user'
  post '/:username/delete' => 'users#destroy', as: 'confirm_delete_user'


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
