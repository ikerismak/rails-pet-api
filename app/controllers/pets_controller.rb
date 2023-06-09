class PetsController < ApplicationController
  def listPets
    limit = params[:limit] || 100
    limit = limit.to_i

    raise StandardError.new({ code: 400, message: 'unexpected error' }) if limit > 100

    @pets = Pet.all
    limited_pets = @pets.first(limit)

    response.headers['x-next'] = 'http://[::1]:3000/pets'
    response.headers['Content-Type'] = 'application/json'

    render json: {
      description: 'A paged array of pets',
      content: limited_pets
    }
  rescue StandardError
    render json: { code: 400, message: 'unexpected error' }, status: :bad_request
  end

  def createPets
    pet_params_name = params[:name]

    if pet_params_name.nil?
      render json: { description: nil, status: :created }
    else
      new_pet = Pet.new(name: pet_params_name)
      if new_pet.save
        render json: { message: 'Pet created successfully', pet: new_pet }, status: :created
      else
        render json: { message: 'Failed to create pet' }, status: :unprocessable_entity
      end
    end
  rescue StandardError
    render json: { code: 400, message: 'unexpected error' }, status: :unprocessable_entity
  end

  def show
    @pet = Pet.find(params[:petId])

    id = params[:petId]

    response.headers['x-next'] = 'http://[::1]:3000/pets'
    response.headers['Content-Type'] = 'application/json'

    render json: { description: "Success pet with ID: #{id} was found", content: @pet }
  rescue StandardError => e
    @error = {
      code: 404,
      message: e.message
    }
    render json: @error, status: :not_found
  rescue StandardErrorInternalServer => e
    @error = {
      code: 500,
      message: e.message
    }
    render json: @error, status: :internal_server_error
  end
end
