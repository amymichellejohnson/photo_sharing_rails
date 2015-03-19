class Tagging < ActiveRecord::Base
  has_many :users
  has_many :photos
end
