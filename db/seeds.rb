# frozen_string_literal: true

require 'faker'

100.times do
  Pet.create(name: Faker::Creature::Animal.name)
end
