require 'date'


class Event < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :datetime, :presence => true

  has_many :media
  has_many :participants

  def self.future
    self.where(["datetime > ?", DateTime.now()])
  end

  def self.past
    self.where(["datetime < ?", DateTime.now()])
  end
end