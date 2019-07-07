Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "shops#new"


  resources :shops do
  		resources :shelves, :candies
	end

	resources :candies
end
