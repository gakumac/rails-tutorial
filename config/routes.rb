Rails.application.routes.draw do
  root 'static_pages#home'  # 名前付きpath => root_path
  get  '/help',    to: 'static_pages#help'  # 名前付きpath => help_path
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  resources :users
end
