Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails
  resources :ingredients

  # criar cocktails controler com 
  # rails generate controller cocktails
  # codar controller para as ações pedidas (get index, show specific cocktail, create and post new cocktail)
  # codar o view

end
