class User < ActiveRecord::Base

  before_save do
    self.email = email.downcase
  end

  validates :email, :email_format => {:message => _('is not looking good')}

end
