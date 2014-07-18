class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|

      t.string    :beginning_airport
      t.string    :ending_airport
      t.datetime  :datetime_local
      t.string    :price
      

      t.timestamps
    end
  end
end
