Rails.application.routes.draw do
  
  root to: 'pages#home'

  get 'about' , to: 'pages#about'
  get 'pages' , to: 'pages#contact'

  resources :portofolios, except: [:show]
  get 'portofolio/:id', to: 'portofolios#show', as: 'portofolio_show'

  resources :blogs

end
