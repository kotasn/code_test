class CreateRelationshipNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :relationship_notifications do |t|
      t.references :user
      t.references :relationship
      t.datetime :read_at
      t.timestamps
    end
  end
end
