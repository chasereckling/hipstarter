class Renamerecipientstableandcreatedonationstable < ActiveRecord::Migration
  def change
    rename_table :recipients, :fundraisers
    add_column :fundraisers, :user_id, :integer
    create_table :donations do |t|
      t.integer :user_id
      t.integer :fundraiser_id
      t.timestamps
    end
  end
end
