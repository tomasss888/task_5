Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/rules'

  get 'gallery/gallery'

  get 'faq/faq'

  resource :contacts
  get 'contacts/new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"

  resources :requests do
    patch 'accept', on: :member
  end


end
