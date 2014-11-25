namespace :users do
  desc "Addusers to mailing list"
  task :ml => :environment do
    require 'rest_client'

    users = User.all
    users.each do |user|
      puts "Adding user [#{user.email}"
      RestClient.post("https://api:#{ENV['MG_KEY']}" \
                      "@api.mailgun.net/v2/lists/events@karajlug.org/members",
                      :subscribed => true,
                      :address => user.email)
    end
  end

  desc 'send the last event notify to mailing list'
  task :lastevent => :environment do
    event = Event.last
    Newsletter.send_newsletter("New event", event)
  end
end
