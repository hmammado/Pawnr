class DashboardsController < ApplicationController
  def show
    @bookings = Booking.where(user: current_user)
    @my_dogs = Dog.where(user: current_user)
    @my_doggies = []
    @my_dogs.each do |dog|
      @my_doggies << Booking.where(dog: dog)
    end
  end
end
