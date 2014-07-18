class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string  :price
      t.string  :location

      t.timestamps
    end
  end
end
