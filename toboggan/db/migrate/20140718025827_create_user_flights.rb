class CreateUserFlights < ActiveRecord::Migration
  def change
    create_table :user_flights do |t|
      t.belongs_to    :user
      t.belongs_to    :flight

      t.timestamps
    end
  end
end
