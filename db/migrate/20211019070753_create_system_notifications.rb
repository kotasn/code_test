class CreateSystemNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :system_notifications do |t|
      t.references :user
      t.datetime :read_at
      t.string :type
      t.text :message
      t.timestamps
    end
  end
end
