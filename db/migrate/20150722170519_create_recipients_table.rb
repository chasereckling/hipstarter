class CreateRecipientsTable < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.column :name, :string
      t.column :donors, :integer
      t.column :donated_amount, :float
    end
  end
end
