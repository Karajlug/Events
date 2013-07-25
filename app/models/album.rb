class Album < ActiveRecord::Base
  validates :name, :presence => true
  has_many :media, :class_name => "Media"
end
