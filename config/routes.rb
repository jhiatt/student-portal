Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/sign_in', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get '/:id', to: 'sessions#show'
  delete '/:id', to: 'sessions#destroy'

  #resume
  get '/resumes', to: 'resumes#index'
  get '/resumes/edit', to: 'resumes#edit'
  patch '/resumes', to: 'resumes#update'
  





end
