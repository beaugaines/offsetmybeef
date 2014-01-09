Offsetmybeef::Application.routes.draw do

  devise_for :users
  resource :dashboards, only: [:show]

  resources :offsets, only: [:index]

  resources :transactions, only: [:new, :create]

  get '/about', to: 'pages#about', as: :about
  get '/offsets-explained', to: 'pages#info', as: :offset_explanation

  get '/buy/:permalink', to: 'transactions#new', as: :show_buy
  post '/buy/:permalink', to: 'transactions#create', as: :buy

  authenticated :user do 
    root to: 'dashboards#show', as: 'authenticated_root'
  end

  root to: 'welcome#index'

end
