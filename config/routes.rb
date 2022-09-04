Rails.application.routes.draw do

  resources :portofolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
resources :blogs

end
