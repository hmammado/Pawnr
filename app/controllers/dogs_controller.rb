class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dog_path(@user)
    else
      render :new
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :size, :description)
  end
end
