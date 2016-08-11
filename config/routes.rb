Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "menu#index"
  get '/findme', to: 'menu#findme'
end
