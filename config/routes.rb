Rails.application.routes.draw do
  resources :pc_usages
  resources :pcs
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pc_usages#index'

  #novas rotas
  get 'pc_usages/finish/:id', to: 'pc_usages#finish_usage', as: :finish_usage


end
