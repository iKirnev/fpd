Rails.application.routes.draw do

  localized do
    devise_for :users, only: [:sessions]

    namespace :api, :defaults => { :format => 'json' } do
      resources :musicians, only: [:index, :show]
      get '/doors/menu', :to => 'doors#menu'
      resources :doors, only: [:result, :show]
      get '/doors/:by/:id', :to => 'doors#result'

      namespace :admin do
        as :user do
          delete 'sign_out', to: '/devise/sessions#destroy'
        end
        resources :dashboard, only: :index
        resources :users, except: :show
        resources :musicians, except: :show
      end
    end

    get '/admin', to: 'admin#index'
    match "/admin/*path", to: "admin#index", format: false, via: :get

    root :to => "application#index"
    match "*path", to: "application#index", format: false, via: :get
  end

end
