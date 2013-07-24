class Album < ActiveRecord::Base
  validates :name, :presence => true

  has_many :media
end
