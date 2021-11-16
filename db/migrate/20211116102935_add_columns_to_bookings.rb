class AddColumnsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :start_date, :date
    add_column :bookings, :end_date, :date
    add_column :bookings, :status, :integer, default: 0
    add_column :bookings, :total_price, :integer
  end
end
