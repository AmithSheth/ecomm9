Rails.application.routes.draw do



  get 'sessions/create'

resources :connections

  get 'connections', to: 'connections#index'

  post '/connections', to: 'connections#create'
  
  get '/connections/new', to: 'connections#news'

  get 'salesforce_products/index'


  



  get 'accounts', to: 'accounts#index'

  get 'accounts/create'

  get 'auth/salesforce/callback', to: 'salesforce#callback'


 

  

  #get 'auth/forcedotcom/callback', to: 'sessions#create'

 # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'

          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end

 Spree::Core::Engine.routes.draw do

  get 'sessions/create'

  get 'tests/index'

  namespace :admin do
    namespace :marketing do
      resources :lists, only: [:show, :index]
      resources :campaigns, only: [:show, :index] do
        member do
          get :display_recipient_emails
        end
      end
      post 'campaigns/sync', to: 'campaigns#sync'
    end
  end

end


