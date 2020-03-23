class ShelterpetsController < ApplicationController

  def index
    @shelter = Shelter.find(params[:id])
    @pets = @shelter.pets
  end

  def new
    @shelter = Shelter.find(params[:shelter_id])
  end

  def create
    shelter = Shelter.find(params[:shelter_id])
    pet = shelter.pets.create(pet_params)

    redirect_to "/shelters/#{shelter.id}/pets"
  end

  private

  def pet_params
    params.permit(:image, :name, :description, :age, :sex)
  end

end
