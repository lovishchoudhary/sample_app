class CreateSlotposts < ActiveRecord::Migration
  def change
    create_table :slotposts do |t|
      t.integer :user_id
      t.string :ground_name
      t.string :sport
      t.integer :vacancy
      t.date :date
      t.time :slot_start_time
      t.time :slot_end_time
      t.string :content

      t.timestamps
    end
    add_index :slotposts, [:user_id, :created_at]
  end
end
