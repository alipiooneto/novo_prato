Rails.application.routes.draw do
  resources :comentarios
  resources :qualificacoes
  resources :clientes
  resources :restaurantes
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
