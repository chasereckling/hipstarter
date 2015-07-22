class Fundraiser < ActiveRecord::Base
  has_many :donations
  has_many :users, :through => :donations
  belongs_to :user

  def self.has_fundraiser
    return (current_user && current_user.fundraiser)
  end
end
