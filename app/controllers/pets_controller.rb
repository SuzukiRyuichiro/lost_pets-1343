class PetsController < ApplicationController
  def index
    # get all the pets from the DB
    @pets = Pet.all
  end

  def show
    # find a pet instance with the id
    # Assign that to an instance variable so i can render them in view
    @pet = Pet.find(params[:id])
  end

  def new
    # i need an empty instance of a Pet
    @pet = Pet.new
  end

  def create
    # i need to permit the parameters
    strong_params = pet_params
    # give the strong params to the Pet.new
    @pet = Pet.new(strong_params)
    # save
    if @pet.save
      # send the users to index if save was successful
      redirect_to pets_path, status: :see_other
    else
      # let the user to stay in the form
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # get the pet from the id in the URL
    @pet = Pet.find(params[:id])
  end

  def update
    # find the pet instance from the params
    @pet = Pet.find(params[:id])
    # update the instance with the new params (strong)
    @pet.update(pet_params)

    # send the user to show page
    redirect_to pet_path(@pet)
  end

  def destroy
    # find the pet instance with id
    @pet = Pet.find(params[:id])
    # destroy
    @pet.destroy

    # send the user to index
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end
end
