Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get '/about', to: "pages#about"
  # add as: :about_us to change the path for er
  get '/contact', to: "pages#contact"

end
