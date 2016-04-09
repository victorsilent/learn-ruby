class PetsController < ApplicationController

  def create
    @person = Person.find(params[:person_id])
    @pet = @person.pets.create(pet_params)
    redirect_to person_path(@person)
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render 'edit'
    end
  end

  def destroy
    @pet = Pet.find(paras[:id])
    @pet.destroy
  end
  private
    def pet_params
      params.require(:pet).permit(:name,:race)
    end

end
