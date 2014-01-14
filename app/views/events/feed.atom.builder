atom_feed :language => 'fa' do |feed|
  feed.title @title
  feed.updated @updated

  @future_events.each do |item|
    next if item.updated_at.blank?

    feed.entry( item ) do |entry|
      entry.url event_url(item)
      entry.title item.name
      entry.content item.description, :type => 'html'
      # the strftime is needed to work with Google Reader.
      entry.updated(item.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ"))
    end
  end
end
