Rails.application.routes.draw do
  get 'items/guns'

  get 'items/attachments'

  get 'items/consumables'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))', :via => :get
  
  root 'welcome#index'
end
