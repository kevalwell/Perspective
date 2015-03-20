class Experience < ActiveRecord::Base
  belongs_to :expeditionist
  has_many :perspectives
end
