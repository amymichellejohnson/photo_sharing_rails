class Photo < ActiveRecord::Base
  belong_to :user
  has_many :users, through: :taggings

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
