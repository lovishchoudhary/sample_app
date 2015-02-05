class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.text :club
      t.text :location
      t.string :address
      t.text :description
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
