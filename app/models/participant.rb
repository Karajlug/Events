class Participant < ActiveRecord::Base
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :email_format => {:message => _('is not looking good')}
  validates :event_id, :presence => true

  belongs_to :event

end
