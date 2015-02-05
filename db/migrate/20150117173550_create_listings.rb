class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :club_id
      t.integer :sport_id

      t.timestamps
    end
  end
end
