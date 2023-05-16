# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get '/pets', to: 'pets#listPets'
  post '/pets', to: 'pets#createPets'
  get '/pets/:petId', to: 'pets#show'
end
