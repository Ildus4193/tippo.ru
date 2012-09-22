Refinery::Application.routes.draw do
  get '/order', :to => 'orders#new', :as => 'new_order'
  resources :order,
            :only => :create,
            :as => :orders,
            :controller => 'orders' do
    collection do
      get :thank_you
    end
  end

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :orders, :only => [:index, :show, :destroy] do
      collection do
        get :spam
      end
      member do
        get :toggle_spam
      end
    end
    resources :order_settings, :only => [:edit, :update]
  end
end
