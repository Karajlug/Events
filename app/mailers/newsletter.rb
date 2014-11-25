class Newsletter < ActionMailer::Base
  default from: 'noreply@karajlug.org'

  def send_newsletter(subject, event)
    @event = event

    mail to: 'test@karajlug.org', subject: subject
  end
end
