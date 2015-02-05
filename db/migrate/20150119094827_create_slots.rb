class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.boolean :slot_status
      t.integer :listing_id

      t.timestamps
    end
  end
end
