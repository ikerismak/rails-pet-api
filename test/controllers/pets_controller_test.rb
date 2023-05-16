# frozen_string_literal: true

require 'test_helper'

class PetsControllerTest < ActionDispatch::IntegrationTest
  test 'should return a paged array of pets' do
    get '/pets'

    assert_response :success
    assert_equal 'application/json', response.content_type

    parsed_response = JSON.parse(response.body)
    assert_equal 'A paged array of pets', parsed_response['description']
    assert_not_nil parsed_response['content']
  end

  test 'should handle unexpected error when limit is exceeded' do
    get '/pets/?limit=101'

    assert_response :bad_request
    assert_equal 'application/json; charset=utf-8', response.content_type

    parsed_response = JSON.parse(response.body)
    assert_equal 400, parsed_response['code']
    assert_equal 'unexpected error', parsed_response['message']
  end

  test 'should return pet by ID' do
    pet = Pet.create(name: 'nombre para prueba')

    get "/pets/#{pet.id}"

    assert_response :success
    assert_equal 'application/json', response.content_type

    parsed_response = JSON.parse(response.body)
    assert_equal "Success pet with ID: #{pet.id} was found", parsed_response['description']
    assert_equal pet.id, parsed_response['content']['id']
    assert_equal pet.name, parsed_response['content']['name']
  end

  test 'should handle error when pet is not found' do
    get '/pets/1234'

    assert_response :not_found
    assert_equal 'application/json; charset=utf-8', response.content_type

    parsed_response = JSON.parse(response.body)
    assert_equal 404, parsed_response['code']
    assert_equal "Couldn't find Pet with 'id'=1234", parsed_response['message']
  end
end
