Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    root to: 'pages#index'

    devise_scope :user do
      get 'login', to: 'devise/sessions#new'
    end

    devise_scope :user do
      get 'signup', to: 'devise/registrations#new'
    end

    resources :posts do
      collection do
        get 'hobby'
        get 'study'
        get 'team'
      end
    end
end
