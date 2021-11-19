class Booking < ApplicationRecord
  enum status: [ :pending, :accepted, :rejected ]
  before_create :set_total_price
  belongs_to :user
  belongs_to :dog
  has_many :reviews

  def set_total_price
    self.total_price = (self.end_date - self.start_date) * self.dog.price
  end
end
