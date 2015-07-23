class Fundraiser < ActiveRecord::Base
  has_many :donations
  has_many :users, :through => :donations
  belongs_to :user
  #has_attached_file :picture, :styles => { :medium => "300x300>", :checkout => "128x128>", :list => "100x100" }
  #validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  def self.has_fundraiser
    return (current_user && current_user.fundraiser)
  end
end
