Rails.application.routes.draw do
  resources :products do

  end
  resources :object_thrives

get '/products', to: 'products#index'

  get 'simple_pages/index'

  get 'simple_pages/about'

  get 'simple_pages/contact'

root 'simple_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
