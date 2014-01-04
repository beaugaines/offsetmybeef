Offsetmybeef::Application.routes.draw do

  devise_for :users
  resource :dashboards, only: [:show]

  resources :offsets, only: [:index]

  get '/buy/:permalink', to: 'transactions#new', as: :show_buy
  post '/buy/:permalink', to: 'transactions#create', as: :buy

  authenticated :user do 
    root to: 'dashboards#show', as: 'authenticated_root'
  end

  root to: 'welcome#index'

end
