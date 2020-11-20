Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do 
    resources :doses, only: [:create, :new]
  end

# crio o doses (ingredient/description pair) 
# resources doses so com as actions que ele precisa
# controller e crio os metodos que autorizei em cima
# monto os views para os controllers criados
end

