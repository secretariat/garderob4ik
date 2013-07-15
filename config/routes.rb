Garderob4ik::Application.routes.draw do

  root :to => 'page#index'

  get "page/index"
  get "gard/all"
  get "brands/list"

  get "/about_us" => "page#show", :uri=>'about_us'

  resources :gard, only: [ :all, :show ]
  resources :brands, only: [ :show, :list ]

  namespace :admin do
    root :to => 'main#index'
    resources :pages

    resources :brands do
      resources :items do
        post :visibility, :on => :member
        # post :show_index, :on => :member
      end
      post :visibility, :on => :member
    end
  end

end
