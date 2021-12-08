class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @dogs = Dog.all.order(created_at: :asc)

    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude,
        info_window: render_to_string(partial: "info_window", locals: { dog: dog }),
        image_url: helpers.asset_url('huella.png')
      }
    end
  end

  def show
    @booking = Booking.new
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :size, :description, :price, photos: [])
  end
end
