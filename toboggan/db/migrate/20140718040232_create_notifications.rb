class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string      :type, default: "text"
      t.string      :url, null: false
      t.boolean     :notified, default: false
      t.belongs_to  :user
      t.belongs_to  :flight

      t.timestamps
    end
  end
end
