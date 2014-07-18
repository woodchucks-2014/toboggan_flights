class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string      :notification_type, null: false
      t.boolean     :notified, default: false
      t.belongs_to  :user, null: false
      t.belongs_to  :flight, null: false

      t.timestamps
    end
  end
end
