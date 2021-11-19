class DashboardsController < ApplicationController
  def show
    @bookings = Booking.where(user: current_user)
    @my_doggies = Booking.where(dog: current_user.dogs)
  end
end
