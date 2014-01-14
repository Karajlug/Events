class Resource < ActiveRecord::Base
  belongs_to :event
  validates :name, :presence => true
  validates :url, :presence => true
  validates :event_id, :presence => true

end
