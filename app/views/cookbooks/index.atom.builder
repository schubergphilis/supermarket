atom_feed language: 'en-US' do |feed|
  feed.title 'Cookbooks'
  feed.updated Time.now

  @cookbooks.each do |cookbook|
    feed.entry cookbook, url: cookbook_url(cookbook) do |entry|
      entry.title cookbook.name
      entry.content cookbook.description

      entry.author do |author|
        author.name cookbook.maintainer
        author.uri user_url(cookbook.owner)
      end
    end
  end
end
