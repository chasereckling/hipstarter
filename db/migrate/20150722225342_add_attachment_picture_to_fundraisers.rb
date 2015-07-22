class AddAttachmentPictureToFundraisers < ActiveRecord::Migration
  def self.up
    change_table :fundraisers do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :fundraisers, :picture
  end
end
