Rails.application.routes.draw do

  get 'about' , to: 'pages#about'
  get 'pages' , to: 'pages#contact'

  resources :portofolios

  resources :blogs

  root to: 'pages#home'
end
