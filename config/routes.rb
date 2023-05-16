# frozen_string_literal: true

Rails.application.routes.draw do
  get '/pets', to: 'pets#listPets'
  post '/pets', to: 'pets#createPets'
  get '/pets/:petId', to: 'pets#show'
end
