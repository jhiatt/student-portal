Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/sign_in', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get '/:id', to: 'sessions#show'
  get '/:id/edit', to: 'sessions#edit'
  patch '/', to: 'sessions#update'

end
