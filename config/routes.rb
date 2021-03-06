Garderob4ik::Application.routes.draw do

  root :to => 'page#index'
  match '/login' => 'sessions#new', :as=>:login
  match '/logout' => 'sessions#destroy', :as=>:logout

  get "page/index"
  get "gard/all"
  get "brands/list"
  get "/about_us" => "page#show", :uri=>'about_us'

  resources :gard, only: [ :all, :show ]
  resources :brands, only: [ :show, :list ]
  resources :category, only: [ :show ]
  resources :material, only: [ :show ]
  resources :style, only: [ :show ]
  resources :width, only: [ :show ]
  resources :color, only: [ :show ]
  resources :size, only: [ :show ]
  resources :sessions, :only => [:new, :create, :destroy]

  namespace :admin do
    root :to => 'main#index'
    resources :users, :only=>[:edit, :update]
    resources :pages
    resources :material
    resources :category
    resources :istyle
    resources :color
    resources :items

    resources :brands do
      resources :items do
        post :visibility, :on => :member
        # post :show_index, :on => :member
      end
      post :visibility, :on => :member
    end

    # resources :category do
    #   post :visibility, :on => :member
      # post :sort, :on => :collection
      # resources :subcategories do
      #     post :visibility, :on => :member
      # end
    # end

  end

  match ':controller(/:action(/:id))(.:format)'
end
