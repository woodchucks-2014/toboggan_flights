class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|

      t.string    :beginning_airport
      t.string    :ending_airport
      t.belongs_to :user

      #What is the date range?
      t.datetime  :start_vacation # deafult next day
      t.datetime  :end_vacation # default next day plus 7

      t.datetime   :search_end

      #What is duration?
      t.integer   :duration #3days, 5days, 7days

      t.integer   :price


      t.timestamps
    end
  end
end
