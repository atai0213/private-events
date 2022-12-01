class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.integer :attendee_id, null: false, foreign_key: true
      t.integer :attended_event_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
