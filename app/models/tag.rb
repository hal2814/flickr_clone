class Tag < ApplicationRecord
  has_many :photos
  belongs_to :photo
  validates :tag, :presence => true
end
