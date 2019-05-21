class AddNumberOfDaysToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :no_days, :integer
  end
end
