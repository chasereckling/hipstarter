class ChangeDonorsColumn < ActiveRecord::Migration
  def change
    rename_column :fundraisers, :donors, :donation_id
  end
end
