Offsetmybeef::Application.routes.draw do

  devise_for :users
  resource :dashboards, only: [:show]

  resources :offsets, only: [:index]

  authenticated :user do 
    root to: 'dashboards#show', as: 'authenticated_root'
  end

  root to: 'welcome#index'

end
