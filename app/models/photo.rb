class Photo < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :tags
  validates :image, :presence => true
  validates :view_count, :presence => true
  validates :description, :presence => true
  validates :location, :presence => true
  validates :date, :presence => true
  validates :camera_type, :presence => true
end
