Garderob4ik::Application.routes.draw do

  root :to => 'page#index'

  get "/about_us" => "page#show", :uri=>'about_us'

  resources :gard, only: [ :all, :show ]
  resources :brands, only: [ :show, :list ]
  resources :category, only: [ :show ]
  resources :style, only: [ :show ]
  resources :width, only: [ :show ]
  resources :color, only: [ :show ]
  resources :size, only: [ :show ]

  namespace :admin do
    root :to => 'main#index'
    resources :pages
    resources :material
    resources :category
    resources :istyle
    resources :color

    resources :brands do
      resources :items do
        post :visibility, :on => :member
        # post :show_index, :on => :member
      end
      post :visibility, :on => :member
    end

  end

  match ':controller(/:action(/:id))(.:format)'
end
