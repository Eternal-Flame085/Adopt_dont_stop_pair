class PetsController < ApplicationController

  def index
    @shelters = Shelter.all
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def pets_index
    @shelter = Shelter.find(params[:shelter_id])
    @shelter_id = params[:shelter_id]
    @pets = Pet.all.where("shelter_id = #{@shelter_id}")
  end

  def pet_new

  end

  def pet_create
    pet = Pet.new({
      image: params[:pet][:image],
      name: params[:pet][:name],
      description: params[:pet][:description],
      age: params[:pet][:age],
      sex: params[:pet][:sex],
      status: params[:pet][:status],
      shelter_id: params[:shelter_id]
      })

    pet.save

    redirect_to "/shelters/#{params[:shelter_id]}/pets"
  end
end
