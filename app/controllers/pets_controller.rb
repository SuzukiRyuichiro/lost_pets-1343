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
end
