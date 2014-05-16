class AddAttachmentImageToBeers < ActiveRecord::Migration
  def self.up
    change_table :beers do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :beers, :image
  end
end
