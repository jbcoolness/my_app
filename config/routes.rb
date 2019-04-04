Rails.application.routes.draw do

  resources :products
  resources :blog
  
  
  
  ### Variantes para las rutas que se crean  
  # resources :blog, only: [:index, :show, :edit]
  # resources :blog, except: [:index, :show, :edit]



  # root 'welcome#index'

  # get 'welcome/index', to: 'welcome#index', as: 'welcome'
  # get 'welcome/about', to: 'welcome#about', as: 'about'
  # get 'welcome/contac_us', to: 'welcome#contac_us', as: 'contact'



end
