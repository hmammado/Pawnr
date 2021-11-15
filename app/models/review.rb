class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :dog, through: :booking
  belongs_to :user, through: :booking
end
