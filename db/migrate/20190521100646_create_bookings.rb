class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :instrument, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :total_price
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
