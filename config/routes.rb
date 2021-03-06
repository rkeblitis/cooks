Rails.application.routes.draw do

  # Home Controller

  root "home#index"

  # Recipes Controller

  get   "/recipes"                  ,to: "recipes#index"       ,as: :recipes
  post  "/recipes"                  ,to: "recipes#create"
  get   "/recipe/:id"               ,to: "recipes#show"        ,as: :recipe
  post  "/recipe/:id"               ,to: "recipes#update"
  patch "/recipe/:id"               ,to: "recipes#update"
  patch "/recipe/:id/upvote"        ,to: "recipes#upvote"      ,as: :upvote_recipe
  get   "/recipes/new"              ,to: "recipes#new"         ,as: :new_recipe
  get   "/recipe/:id/edit"          ,to: "recipes#edit"        ,as: :edit_recipe
  patch "/recipe/:id/edit"          ,to: "recipes#destroy"

  # Ingredients Controller

  get   "/ingredients"              ,to: "ingredients#index"   ,as: :ingredients
  post  "/ingredients"              ,to: "ingredients#create"
  get   "/ingredient/:id"           ,to: "ingredients#show"    ,as: :ingredient
  patch "/ingredient/:id"           ,to: "ingredients#update"
  patch "/ingredient/:id/upvote"    ,to: "ingredients#upvote"  ,as: :upvote_ingredient
  get   "/ingredients/new"          ,to: "ingredients#new"     ,as: :new_ingredient
  get   "/ingredient/:id/edit"      ,to: "ingredients#edit"    ,as: :edit_ingredient
  patch "/ingredient/:id/edit"      ,to: "ingredients#destroy"

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
