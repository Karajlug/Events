class Newsletter < ActionMailer::Base
  default from: 'noreply@karajlug.org'

  def send_newsletter(subject, event)
    @event =
    mail to: 'events@karajlug.org', subject: subject
  end
end
