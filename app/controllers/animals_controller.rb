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

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    animal = Animal.find(params[:id])
    animal.name = params[:name]
    animal.diet = params[:diet]
    animal.save
    redirect_to '/animals'
  end

  def destroy
    animal = Animal.find(params[:id])
    animal.destroy
    redirect_to '/animals'
  end

end
