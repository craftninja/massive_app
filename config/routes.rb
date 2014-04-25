Rails.application.routes.draw do
  root 'welcome#index'
  get '/animals' => 'animals#index'
  get '/animals/new' => 'animals#new'
  post '/animals' => 'animals#create'
  get '/animals/:id' => 'animals#show'
  get '/animals/:id/edit' => 'animals#edit'
  put '/animals/:id' => 'animals#update'
end
