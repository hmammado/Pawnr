class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new(booking_params)
    @booking.dog = @dog
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
