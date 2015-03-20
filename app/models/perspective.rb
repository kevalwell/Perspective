class Perspective < ActiveRecord::Base
  belongs_to :experience
  has_many :comments
end
