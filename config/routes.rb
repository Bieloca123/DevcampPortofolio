Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  root to: 'pages#home'

  get 'about', to: 'pages#about'
  get 'pages', to: 'pages#contact'

  resources :portofolios

  get 'portofolio/:id', to: 'portofolios#show', as: 'portofolio_show'
  get 'angular-items', to: 'portofolios#angular'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
