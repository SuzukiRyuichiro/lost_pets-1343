class PetsController < ApplicationController
  def index
    # get all the pets from the DB
    @pets = Pet.all
  end
end
