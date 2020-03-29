class PetApplication < ApplicationRecord

  has_many :application_pets
  has_many :pets, through: :application_pets

  validates_presence_of :pet_id, :name, :address, :city, :state, :zip, :phone_number, :description

end
