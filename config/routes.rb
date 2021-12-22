Rails.application.routes.draw do
  get 'contacts/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  get 'contacts/new', to: 'contacts#new'
  get 'home/history'
  post 'contacts', to: 'contacts#create'
end


