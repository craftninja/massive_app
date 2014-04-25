Rails.application.routes.draw do
  root 'welcome#index'
  get '/animals' => 'animals#index'
  get '/animals/new' => 'animals#new'
  post 'animals' => 'animals#create'
end
