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
      render :new
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end
end
