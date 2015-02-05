class AddAttachmentPhotoToClubs < ActiveRecord::Migration
  def self.up
    change_table :clubs do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :clubs, :photo
  end
end
