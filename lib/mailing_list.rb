class ML
  def self.add_user(user)
    RestClient.post("https://api:#{ENV['MG_KEY']}" \
                    "@api.mailgun.net/v2/lists/events@karajlug.org/members",
                    :subscribed => true,
                    :address => user.email)
  end
end
