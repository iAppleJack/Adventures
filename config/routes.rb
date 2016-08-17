Rails.application.routes.draw do
  get 'travels/index'

  get 'travels/new'

  get 'travels/create'

  get 'travels/destroy'

  get 'admin/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "menu#index"
  get '/findme', to: 'menu#findme'
  get '/images', to: 'menu#images'


  get 'auth/:provider/callback', to: "sessions#create"

  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

  get '/admin', to: 'admin#index'
  post '/admin/travelcreate'

  resources :travels, only: [:index, :new, :create, :destroy, :show]
  root "resumes#index"

end
