Rails.application.routes.draw do



  get 'orders/index'

  get 'simple_pages/show'

  get 'simple_pages/orders'

  get 'simple_pages/landing_page'

  resources :products
  resources :object_thrives

  root 'simple_pages#landing_page'

  get 'simple_pages/index'

  get 'simple_pages/about'

  get 'simple_pages/contact'

 resources :orders, only: [:index, :show, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
