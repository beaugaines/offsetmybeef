Offsetmybeef::Application.routes.draw do
  authenticated :user do 
    root to: 'dashboards#show', as: 'authenticated_root'
  end

  resource :dashboards, only: [:show]
  get "welcome/index"
  devise_for :users
  root to: 'welcome#index'

end
