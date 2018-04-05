Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :homeworks, only: :index do
  #	resources :user_homeworks, only: :create
  #end

  #resources :user_homeworks, only: :index

  resources :homeworks do
    member do
      post 'add_check'
      delete 'remove_check', to:'homeworks#remove_check', as: 'remove_check'      
    end
  end

  root 'homeworks#index'


 # root to: 'homeworks#index'	
  devise_for :users

end
