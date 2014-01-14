require 'date'


class Event < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :datetime, :presence => true

  has_many :media
  has_many :participants
  has_many :resources

  def self.future
    self.where(["datetime > ?", DateTime.now()]).order('datetime')
  end

  def self.past
    self.where(["datetime < ?", DateTime.now()])
  end

  def finished?
    self.datetime < DateTime.now
  end

  def is_full?
    if self.capacity == 0
      true
    else
      false
    end
  end
end
