Rails.application.routes.draw do
  namespace :readers do
  get 'home/index'
  end

  namespace :writers do
  get 'home/index'
  end

  namespace :editors do
  get 'home/index'
  end

  devise_for :users
  resources :users
  
  namespace :blogr do 
    resources :posts do 
      get :public , :on => :collection
      member do
        patch :publish 
        patch :unpublish
        
      end
    end 
  end
 
   root to: 'blogr/posts#index'

end
