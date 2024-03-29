Rails.application.routes.draw do
  namespace :admin do
    root 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :users, only: %i[ index show edit update destroy ]
    resources :boards, only: %i[ index show edit update destroy ]
    resources :answers, only: %i[ index show edit update destroy ]
    resources :posts, only: %i[ index show edit update destroy ]
    resources :songs, only: %i[ index show edit update destroy ]
    resources :artists, only: %i[ index show edit update destroy ]
    resources :comics, only: %i[ index show edit update destroy ]
    resources :novels, only: %i[ index show edit update destroy ]
    resources :movies, only: %i[ index show edit update destroy ]
    resources :animes, only: %i[ index show edit update destroy ]
    resources :games, only: %i[ index show edit update destroy ]

  end
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  get 'contents/new'

  resources :users, only: %i[new show create destroy] do
    collection do 
      get 'artist_lists', to: 'artist_lists#index'
      get 'likes', to: 'likes#index'
    end
  end
  resources :password_resets, only: %i[new create edit update]
  resource :profile, only: %i[show edit update]
  resources :posts
  resources :songs, only: %i[index show new create edit update destroy] do
    collection do 
      get 'search'
      post 'research', to: 'songs#research_by_url'
    end
  end

  resources :artists, only: %i[new create update]
  resources :movies, only: %i[ new create search]
  resources :novels, only: %i[ new create search]
  resources :comics, only: %i[ new create search]
  resources :animes, only: %i[ new create search]
  resources :games, only: %i[ new create search]


  resources :boards do
    member do
      post 'change_status', to: 'boards#change_status'
    end
    resources :answers, only: %i[show new edit update create destroy] do
      collection do
        get :save_session
      end
    end
  end

  resources :likes, only: %i[create destroy]
  resources :artist_lists, only: %i[create destroy show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "top#index"

  get 'privacy_policy', to: 'top#privacy_policy'
  get 'terms', to: 'top#terms'
  get "login", to: 'user_sessions#new'
  post "login", to: 'user_sessions#create'
  delete "logout", to: 'user_sessions#destroy'
end
