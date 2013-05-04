class User < ActiveRecord::Base

  before_save do
    self.email = email.downcase
  end

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

end
