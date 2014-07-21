class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :country
      t.string :code


      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
