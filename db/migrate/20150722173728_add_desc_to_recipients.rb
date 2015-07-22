class AddDescToRecipients < ActiveRecord::Migration
  def change
    add_column(:recipients, :description, :string)
  end
end
