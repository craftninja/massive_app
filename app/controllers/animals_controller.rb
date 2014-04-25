class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def new

  end

  def create
    animal = Animal.new
    animal.name = params[:name]
    animal.diet = params[:diet]
    animal.save
    redirect_to '/animals'
  end

end
