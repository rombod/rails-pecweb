Rails.application.routes.draw do
  

  #get 'static_pages/forcast'
  
  get 'forcast', to: 'static_pages#forcast'

  #get 'static_pages/construction'
  get 'construction', to: 'static_pages#construction'

  #get 'static_pages/contact'
  get 'contact', to: 'static_pages#contact'

  #get 'static_pages/engineering'
  get 'engineering', to: 'static_pages#engineering'

  #get 'static_pages/enhanced'
  get 'enhanced', to: 'static_pages#enhanced'

  #get 'static_pages/experience'
  get 'experience', to: 'static_pages#experience'

  #get 'static_pages/our'
  get 'our', to: 'static_pages#our'

  #get 'static_pages/procurement'
  get 'procurement', to: 'static_pages#procurement'

  #get 'static_pages/technology'
  get 'technology', to: 'static_pages#technology'

  #get 'static_pages/template'
  get 'template', to: 'static_pages#template'

  #get 'static_pages/career'
  get 'career', to: 'static_pages#career'

  #get 'static_pages/clean'
  get 'clean', to: 'static_pages#clean'  

  #get 'static_pages/about'

  get 'about', to: 'static_pages#about'

  #get 'static_pages/index'
  get 'index', to: 'static_pages#index'

  root 'static_pages#index'

  get 'signup'  => 'users#new' 
  resources :users

  get 'login' => 'sessions#new'
  
  post 'login' => 'sessions#create'
  
  delete 'logout' => 'sessions#destroy'

  
  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    

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
