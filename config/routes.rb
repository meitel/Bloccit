Rails.application.routes.draw do


  devise_for :users
  resources :users, only: [:update]
  get 'advertisements/index'

  get 'advertisements/show'

  
  resources :advertisements
  resources :topics do
    resources :posts, except: [:index]
  end


  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'
end
