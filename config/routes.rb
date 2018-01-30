Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
  resources :products
  namespace :admin do
      resources :product_lists
  end
  resources :product_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   namespace :admin do
     resources :products
   end
end
