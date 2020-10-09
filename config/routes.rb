Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/shelters', to: 'shelters#index'
  get '/shelters/new', to: 'shelters#new'
  post '/shelters', to: 'shelters#create'
  get 'shelters/:id', to: 'shelters#show'
  get 'shelters/:id/edit', to: 'shelters#edit'
  patch 'shelters/:id', to: 'shelters#update'
  delete 'shelters/:id', to: 'shelters#destroy'

  get '/pets', to: 'pets#index'
  get '/pets/:id', to: 'pets#show'
  get '/shelters/:shelter_id/pets', to: 'pets#pets_index'
  post '/shelters/:shelter_id/pets', to: 'pets#pet_create'
  get '/shelters/:shelter_id/pets/new', to: 'pets#pet_new'
end
