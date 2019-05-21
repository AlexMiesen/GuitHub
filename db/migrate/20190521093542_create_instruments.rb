class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.references :user, foreign_key: true
      t.string :category
      t.string :name
      t.string :description
      t.string :location
      t.string :photo
      t.integer :price_per_day

      t.timestamps
    end
  end
end
